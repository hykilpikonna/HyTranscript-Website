package cc.moecraft.web.hytranscript;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import static cc.moecraft.web.hytranscript.LanguageFileReader.DEFAULT_LANG;

/**
 * 此类由 Hykilpikonna 在 2018/04/18 创建!
 * Created by Hykilpikonna on 2018/04/18!
 * Github: https://github.com/hykilpikonna
 * QQ: admin@moecraft.cc -OR- 871674895
 */
public class PostsDatabaseReader
{
    private Map<String, PostsDatabase> postsDatabaseFileMap;

    private enum OfficiallySupportedLanguages
    {
        zh, en
    }

    public PostsDatabaseReader()
    {
        postsDatabaseFileMap = new HashMap<>();
    }

    public PostsDatabase getFile(String lang)
    {
        lang = getLang(lang);

        if (postsDatabaseFileMap.containsKey(lang))
        {
            return postsDatabaseFileMap.get(lang);
        }
        else
        {
            postsDatabaseFileMap.put(lang, new PostsDatabase(lang));
            return getFile(lang);
        }
    }

    public String getLang(String original)
    {
        return !hasLanguageFile(original) ? DEFAULT_LANG : original;
    }

    private boolean hasLanguageFile(String lang)
    {
        try
        {
            OfficiallySupportedLanguages.valueOf(lang);
            return true;
        }
        catch (Exception ignored)
        {
            return new File("./HyTranscript/IndexLanguage@" + lang + ".hylang").exists();
        }
    }
}
