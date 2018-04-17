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
    public PostsDatabase()
    {
        super("0.0.1", "HyTranscript", "PostsDatabase", "hydb", false, true, false);
    }

    public Song getSong(String path)
    {
        String finalPath = path + ".";

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

    public void setSong(String path, Song song)
    {
        String finalPath = path + ".";

        set(finalPath + "ImageURL", song.getImageURL());
        set(finalPath + "Name", song.getName());
        set(finalPath + "Subtitle", song.getSubtitle());
        set(finalPath + "Author", song.getAuthor());
        set(finalPath + "TimeInSeconds", song.getTimeInSeconds());
        set(finalPath + "Difficulty", song.getDifficulty().toString());
        set(finalPath + "Likes", song.getLikes());

        for (int i = 0; i < song.getLinks().size(); i++)
        {
            String layerPath = finalPath + "Links." + i + ".";
            set(layerPath + "Type", song.getLinks().get(i).getType().name());
            set(layerPath + "Domain", song.getLinks().get(i).getDomain().name());
            set(layerPath + "URL", song.getLinks().get(i).getUrl());
        }
    }

    private DownloadLink getDownloadLink(String path)
    {
        return new DownloadLink(
                DownloadLink.LinkType.valueOf(getString("Type")),
                DownloadLink.LinkDomain.valueOf(getString("Domain")),
                getString("URL")
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

    }
}
