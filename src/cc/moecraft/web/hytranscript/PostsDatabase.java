package cc.moecraft.web.hytranscript;

import cc.moecraft.api.Config;

import java.util.ArrayList;

/**
 * 此类由 Hykilpikonna 在 2018/04/15 创建!
 * Created by Hykilpikonna on 2018/04/15!
 * Twitter: @Hykilpikonna
 * QQ/Wechat: 871674895
 */
public class PostsDatabase extends Config
{
    String lang;

    private static final String SONG_PREFIX = "Song.";

    public PostsDatabase(String lang)
    {
        super("0.0.1", "HyTranscript", "PostsDatabase@" + lang, "hydb", false, true, true);

        this.lang = lang;

        System.out.println("HyTranscript Database File Path = " + getConfigFile().getAbsolutePath());
    }

    public ArrayList<Song> getSongs()
    {
        ArrayList<Song> result = new ArrayList<>();

        for (String key : getKeys(SONG_PREFIX))
        {
            result.add(getSong(key));
        }

        return result;
    }

    public Song getSong(String k)
    {
        String finalPath = SONG_PREFIX + k + ".";

        ArrayList<String> keys = getKeys(finalPath + "Links");
        ArrayList<DownloadLink> links = new ArrayList<>();

        keys.forEach(key -> links.add(getDownloadLink(finalPath + "Links." + key)));

        return new Song(
                getString(finalPath + "ImageURL"),
                getString(finalPath + "Name"),
                getString(finalPath + "Subtitle"),
                getString(finalPath + "Author"),
                getInt(finalPath + "TimeInSeconds"),
                Difficulty.valueOf(getString(finalPath + "Difficulty")),
                getString(finalPath + "DateReleased"),
                links
        );
    }

    public void setSong(Song song)
    {
        setSong(String.valueOf(System.currentTimeMillis()), song);
        save();
    }

    private void setSong(String key, Song song)
    {
        String finalPath = SONG_PREFIX + key + ".";

        set(finalPath + "ImageURL", song.getImageURL());
        set(finalPath + "Name", song.getName());
        set(finalPath + "Subtitle", song.getSubtitle());
        set(finalPath + "Author", song.getAuthor());
        set(finalPath + "TimeInSeconds", song.getTimeInSeconds());
        set(finalPath + "Difficulty", song.getDifficulty().toString());
        set(finalPath + "DateReleased", song.getDateReleased());

        for (int i = 0; i < song.getLinks().size(); i++)
        {
            String layerPath = finalPath + "Links.L" + i + ".";
            set(layerPath + "Type", song.getLinks().get(i).getType().name());
            set(layerPath + "Domain", song.getLinks().get(i).getDomain().name());
            set(layerPath + "URL", song.getLinks().get(i).getUrl());
        }

        save();
    }

    private DownloadLink getDownloadLink(String path)
    {
        path += ".";

        return new DownloadLink(
                DownloadLink.LinkType.valueOf(getString(path + "Type")),
                DownloadLink.LinkDomain.valueOf(getString(path + "Domain")),
                getString(path + "URL")
        );
    }

    @Override
    public void readConfig()
    {

    }

    @Override
    public void writeConfig()
    {

    }

    @Override
    public void writeDefaultConfig()
    {
        ArrayList<DownloadLink> links = new ArrayList<>();
        links.add(new DownloadLink(DownloadLink.LinkType.Video, DownloadLink.LinkDomain.Youtube, "youtube.com"));
        links.add(new DownloadLink(DownloadLink.LinkType.Video, DownloadLink.LinkDomain.Bilibili, "bilibili.com"));
        links.add(new DownloadLink(DownloadLink.LinkType.Sheet, DownloadLink.LinkDomain.Flat, "flat.io"));
        links.add(new DownloadLink(DownloadLink.LinkType.Misc, DownloadLink.LinkDomain.GoogleDrive, "drive.google.com"));
        links.add(new DownloadLink(DownloadLink.LinkType.Misc, DownloadLink.LinkDomain.DuPan, "pan.baidu.com"));

        setSong(new Song("http://i0.kym-cdn.com/photos/images/original/000/581/296/c09.jpg", "DefaultSongName", "DefaultSubtitle", "DefaultAuthor", 156, Difficulty.Hard, "2018-04-17", links));
    }
}
