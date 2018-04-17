package cc.moecraft.web.hytranscript;

import java.net.URL;

/**
 * 此类由 Hykilpikonna 在 2018/04/15 创建!
 * Created by Hykilpikonna on 2018/04/15!
 * Twitter: @Hykilpikonna
 * QQ/Wechat: 871674895
 */
public class DownloadLink
{
    private LinkType type;

    private LinkDomain domain;

    private String url;

    public DownloadLink(LinkType type, LinkDomain domain, String url)
	{
        this.type = type;
        this.domain = domain;
        this.url = url;
    }

    public enum LinkType
    {
        Video, Sheet, Misc
    }

    public enum LinkDomain
    {
        Youtube("Youtube.com"), Bilibili("Bilibili.com"), Flat("Flat.io"), GoogleDrive("Drive.google.com"), DuPan("Pan.baidu.com");

        String displayName;

        LinkDomain(String displayName)
        {
            this.displayName = displayName;
        }

        @Override
        public String toString()
        {
            return displayName;
        }
    }

    public LinkType getType()
    {
        return type;
    }

    public void setType(LinkType type)
    {
        this.type = type;
    }

    public LinkDomain getDomain()
    {
        return domain;
    }

    public void setDomain(LinkDomain domain)
    {
        this.domain = domain;
    }

    public String getUrl()
    {
        return url;
    }

    public void setUrl(String url)
    {
        this.url = url;
    }
}
