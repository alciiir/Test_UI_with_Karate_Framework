import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


public class ManagementTest {


    @Test
    void testParallel(){
      Results results = Runner.path("classpath:TEST_UI").outputCucumberJson(true).tags("~@ignore").parallel(8);
      generateReport(results.getReportDir());
    }

    public static void generateReport(String KarateOutputPath){
        Collection<File> jsonFiles = FileUtils.listFiles(new File(KarateOutputPath), new String[]{"json"}, true);
        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("build"), "curso_karate");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }
}