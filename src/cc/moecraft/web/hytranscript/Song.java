package cc.moecraft.web.hytranscript;

import java.util.ArrayList;

/**
 * 此类由 Hykilpikonna 在 2018/04/15 创建!
 * Created by Hykilpikonna on 2018/04/15!
 * Twitter: @Hykilpikonna
 * QQ/Wechat: 871674895
 */
public class Song
{
    private String imageURL;

    private String name;

    private String subtitle;

    private String author;

    private int timeInSeconds;

    private Difficulty difficulty;

    private String dateReleased;

    private ArrayList<DownloadLink> links;

    public Song(String imageURL, String name, String subtitle, String author, int timeInSeconds, Difficulty difficulty, String dateReleased, ArrayList<DownloadLink> links)
    {
        this.imageURL = imageURL;
        this.name = name;
        this.subtitle = subtitle;
        this.author = author;
        this.timeInSeconds = timeInSeconds;
        this.difficulty = difficulty;
        this.dateReleased = dateReleased;
        this.links = links;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getSubtitle()
    {
        return subtitle;
    }

    public void setSubtitle(String subtitle)
    {
        this.subtitle = subtitle;
    }

    public String getAuthor()
    {
        return author;
    }

    public void setAuthor(String author)
    {
        this.author = author;
    }

    public String getImageURL()
    {
        return imageURL;
    }

    public void setImageURL(String imageURL)
    {
        this.imageURL = imageURL;
    }

    public int getTimeInSeconds()
    {
        return timeInSeconds;
    }

    public void setTimeInSeconds(int timeInSeconds)
    {
        this.timeInSeconds = timeInSeconds;
    }

    public Difficulty getDifficulty()
    {
        return difficulty;
    }

    public void setDifficulty(Difficulty difficulty)
    {
        this.difficulty = difficulty;
    }

    public String getDateReleased()
    {
        return dateReleased;
    }

    public void setDateReleased(String dateReleased)
    {
        this.dateReleased = dateReleased;
    }

    public ArrayList<DownloadLink> getLinks()
    {
        return links;
    }

    public void setLinks(ArrayList<DownloadLink> links)
    {
        this.links = links;
    }
}
