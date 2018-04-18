package cc.moecraft.web.hytranscript;

import cc.moecraft.api.Config;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

/**
 * 此类由 Hykilpikonna 在 2018/04/17 创建!
 * Created by Hykilpikonna on 2018/04/17!
 * Twitter: @Hykilpikonna
 * QQ/Wechat: 871674895
 */
public class LanguageFileReader
{
    private Map<String, LanguageFile> languageFileMap;

    private enum OfficiallySupportedLanguages
    {
        zh, en
    }

    private String defaultLang = "en";

    public LanguageFileReader()
    {
        languageFileMap = new HashMap<>();


    }

    public String get(String lang, String placeholder)
    {
        return getFile(lang).get(placeholder);
    }

    public LanguageFile getFile(String lang)
    {
        if (!hasLanguageFile(lang)) lang = defaultLang;

        if (languageFileMap.containsKey(lang))
        {
            return languageFileMap.get(lang);
        }
        else
        {
            languageFileMap.put(lang, new LanguageFile(lang));
            return getFile(lang);
        }
    }

    private boolean hasLanguageFile(String lang)
    {
        try
        {
            System.out.println(OfficiallySupportedLanguages.valueOf(lang));
            return true;
        }
        catch (Exception ignored)
        {
            return new File("./HyTranscript/IndexLanguage@" + lang + ".hylang").exists();
        }
    }

    public class LanguageFile extends Config
    {
        String lang;

        public LanguageFile(String lang)
        {
            super("0.0.1", "HyTranscript", "IndexLanguage@" + lang, "hylang", false, false, true);
            this.lang = lang;
            checkConfig();
        }

        public String get(String placeholder)
        {
            return getString(placeholder);
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
            if (lang == null) return;

            if (lang.equals(OfficiallySupportedLanguages.en.name()))
            {
                set("INDEX-1-TOP-BAR-LINK-1", "Top");
                set("INDEX-1-TOP-BAR-LINK-2", "Introduction");
                set("INDEX-1-TOP-BAR-LINK-3", "Songs");

                set("INDEX-1-CENTER-TEXT-1", "HyTranscript");
                set("INDEX-1-CENTER-TEXT-2", "Now you can practice your favorite piano songs with quality sheet music for free!");

                set("INDEX-1-CENTER-BUTTON-1", "Learn More");
                set("INDEX-1-CENTER-BUTTON-2", "Download Sheet Musics");

                set("INDEX-3-HEADER-TEXT-1", "Why Us?");
                set("INDEX-3-HEADER-TEXT-2", "because we are the best lolololol (jk");

                set("INDEX-3-CONTENT-TITLE-TEXT-1", "Holy, It's Free!");
                set("INDEX-3-CONTENT-TITLE-TEXT-2", "...And No Ads!");
                set("INDEX-3-CONTENT-TITLE-TEXT-3", "Suggest Songs!");
                set("INDEX-3-CONTENT-TITLE-TEXT-4", "i'm cute");

                set("INDEX-3-CONTENT-DESCRIPTION-TEXT-1", "You can download everything and suggest any song for free.");
                set("INDEX-3-CONTENT-DESCRIPTION-TEXT-2", "There are no ads on this page except for flat.io and I don't benefit from it.");
                set("INDEX-3-CONTENT-DESCRIPTION-TEXT-3", "You can suggest your favorite piano songs for me to transcribe!");
                set("INDEX-3-CONTENT-DESCRIPTION-TEXT-4", "Isn't this the best reason...?. ( totally not");

                set("INDEX-4-HEADER-TEXT-1", "Downloads");
                set("INDEX-4-HEADER-TEXT-2", "(you actually have to click on \"Download Links:\" in order to see the download links...)");

                set("INDEX-4-PLACEHOLDERS-DIFFICULTY-1", "Easy");
                set("INDEX-4-PLACEHOLDERS-DIFFICULTY-2", "Normal");
                set("INDEX-4-PLACEHOLDERS-DIFFICULTY-3", "Hard");
                set("INDEX-4-PLACEHOLDERS-DIFFICULTY-4", "Expert");

                set("INDEX-4-PLACEHOLDERS-LINK-TYPE-1", "Video");
                set("INDEX-4-PLACEHOLDERS-LINK-TYPE-2", "Sheet");
                set("INDEX-4-PLACEHOLDERS-LINK-TYPE-3", "Misc.");

                set("INDEX-5-HEADER-TEXT-1", "Suggest Songs");
                set("INDEX-5-HEADER-TEXT-2", "public interface coming soon... currently u can email me for suggestions: admin@moecraft.cc");

                set("INDEX-FOOTER-TEXT-1", "Copyright © 2018 Toolazytoregister  <del>All rights reserved.</del>");
            }
            else if (lang.equals(OfficiallySupportedLanguages.zh.name()))
            {
                set("INDEX-1-TOP-BAR-LINK-1", "主页");
                set("INDEX-1-TOP-BAR-LINK-2", "介绍");
                set("INDEX-1-TOP-BAR-LINK-3", "下载");

                set("INDEX-1-CENTER-TEXT-1", "HyTranscript");
                set("INDEX-1-CENTER-TEXT-2", "一个超级认真的发布钢琴谱的网站! (雾");
                set("INDEX-1-CENTER-BUTTON-1", "介绍");
                set("INDEX-1-CENTER-BUTTON-2", "下载完成的谱子");

                set("INDEX-3-HEADER-TEXT-1", "在这里可以干什么?");
                set("INDEX-3-HEADER-TEXT-2", "可以下载小桂已经扒好的谱子, 也可以把你喜欢的钢琴曲丢给小桂去扒_(:з」∠)_");

                set("INDEX-3-CONTENT-TITLE-TEXT-1", "完全免费!");
                set("INDEX-3-CONTENT-TITLE-TEXT-2", "没有广告!");
                set("INDEX-3-CONTENT-TITLE-TEXT-3", "可以推歌!");
                set("INDEX-3-CONTENT-TITLE-TEXT-4", "小桂可爱!");

                set("INDEX-3-CONTENT-DESCRIPTION-TEXT-1", "这个网站上所有谱子都可以免费下载哦!");
                set("INDEX-3-CONTENT-DESCRIPTION-TEXT-2", "完全没广告! (即使有我也不通过广告赚钱的...");
                set("INDEX-3-CONTENT-DESCRIPTION-TEXT-3", "可以免费推荐你喜欢的钢琴曲给我让我扒!");
                set("INDEX-3-CONTENT-DESCRIPTION-TEXT-4", "诶诶诶诶?? 我不是! 我没有! 别乱说!!");

                set("INDEX-4-HEADER-TEXT-1", "下载!");
                set("INDEX-4-HEADER-TEXT-2", "(\"下载链接:\" 要点一下才能看到的)");

                set("INDEX-4-PLACEHOLDERS-DIFFICULTY-1", "萌新");
                set("INDEX-4-PLACEHOLDERS-DIFFICULTY-2", "一般");
                set("INDEX-4-PLACEHOLDERS-DIFFICULTY-3", "大佬");
                set("INDEX-4-PLACEHOLDERS-DIFFICULTY-4", "巨佬");

                set("INDEX-4-PLACEHOLDERS-LINK-TYPE-1", "视频");
                set("INDEX-4-PLACEHOLDERS-LINK-TYPE-2", "谱子");
                set("INDEX-4-PLACEHOLDERS-LINK-TYPE-3", "其他");

                set("INDEX-5-HEADER-TEXT-1", "推歌");
                set("INDEX-5-HEADER-TEXT-2", "公共接口还在开发... 现在要推歌就发邮箱给我吧! admin@moecraft.cc");

                set("INDEX-FOOTER-TEXT-1", "<del>Copyright © 2018 Company Name All rights reserved.</del> // 懒得注册版权了_(:з」∠)_");
            }
            else
            {
                System.out.println("ERROR - This isn't possible.");
            }
        }
    }

    public Map<String, LanguageFile> getLanguageFileMap()
    {
        return languageFileMap;
    }

    public void setLanguageFileMap(Map<String, LanguageFile> languageFileMap)
    {
        this.languageFileMap = languageFileMap;
    }
}
