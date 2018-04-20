package cc.moecraft.web.hytranscript;

import javax.servlet.*;
import java.util.Set;

/**
 * 此类由 Hykilpikonna 在 2018/04/15 创建!
 * Created by Hykilpikonna on 2018/04/15!
 * Twitter: @Hykilpikonna
 * QQ/Wechat: 871674895
 */
public class Main implements ServletContextListener
{
    public static final String VERSION = "0.0.2";

    private static Main instance;

    public static Main getInstance()
    {
        return instance;
    }

    private PostsDatabaseReader database;

    public static PostsDatabaseReader database()
    {
        return getInstance().database;
    }

    private LanguageFileReader language;

    public static LanguageFileReader language()
    {
        return getInstance().language;
    }

    @Override
    public void contextDestroyed(ServletContextEvent arg0)
    {
        //Notification that the servlet context is about to be shut down.
    }

    @Override
    public void contextInitialized(ServletContextEvent arg0)
    {
        // do all the tasks that you need to perform just after the server starts
        //Notification that the web application initialization process is starting

        instance = this;

        database = new PostsDatabaseReader();

        language = new LanguageFileReader();
    }
}
