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
    private int nextIndex;

    public PostsDatabase()
    {
        super("0.0.1", "HyTranscript", "PostsDatabase", "hydb", false, true, false);

        System.out.println("HyTranscript Database File Path = " + getConfigFile().getAbsolutePath());
    }

    public ArrayList<Song> getSongs()
    {
        ArrayList<Song> result = new ArrayList<>();

        for (int i = 0; i < nextIndex; i++)
        {
            result.add(getSong(i));
        }

        return result;
    }

    public Song getSong(int index)
    {
        String finalPath = "S" + index + ".";

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
                getInt(finalPath + "Likes"),
                links
        );
    }

    public void setSong(Song song)
    {
        setSong(nextIndex, song);
        nextIndex += 1;
        saveCurrentIndex();
    }

    private void setSong(int index, Song song)
    {
        String finalPath = "S" + index + ".";

        set(finalPath + "ImageURL", song.getImageURL());
        set(finalPath + "Name", song.getName());
        set(finalPath + "Subtitle", song.getSubtitle());
        set(finalPath + "Author", song.getAuthor());
        set(finalPath + "TimeInSeconds", song.getTimeInSeconds());
        set(finalPath + "Difficulty", song.getDifficulty().toString());
        set(finalPath + "Likes", song.getLikes());

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
        nextIndex = getInt("CurrentIndex");
    }

    @Override
    public void writeConfig()
    {

    }

    @Override
    public void writeDefaultConfig()
    {
        saveCurrentIndex();

        ArrayList<DownloadLink> links = new ArrayList<>();
        links.add(new DownloadLink(DownloadLink.LinkType.Video, DownloadLink.LinkDomain.Youtube, "youtube.com"));
        links.add(new DownloadLink(DownloadLink.LinkType.Video, DownloadLink.LinkDomain.Bilibili, "bilibili.com"));
        links.add(new DownloadLink(DownloadLink.LinkType.Sheet, DownloadLink.LinkDomain.Flat, "flat.io"));
        links.add(new DownloadLink(DownloadLink.LinkType.Misc, DownloadLink.LinkDomain.GoogleDrive, "drive.google.com"));
        links.add(new DownloadLink(DownloadLink.LinkType.Misc, DownloadLink.LinkDomain.DuPan, "pan.baidu.com"));

        setSong(new Song("http://i0.kym-cdn.com/photos/images/original/000/581/296/c09.jpg", "DefaultSongName", "DefaultSubtitle", "DefaultAuthor", 156, Difficulty.Hard, 124, links));
    }

    public int getNextIndex()
    {
        return nextIndex;
    }

    public void setNextIndex(int nextIndex)
    {
        this.nextIndex = nextIndex;
    }

    public void saveCurrentIndex()
    {
        set("CurrentIndex", nextIndex);
        save();
    }
}
