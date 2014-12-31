.class public Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field public static final FACTORY_TEST_HIGH_LEVEL:I = 0x2

.field public static final FACTORY_TEST_LOW_LEVEL:I = 0x1

.field public static final FACTORY_TEST_OFF:I = 0x0

.field static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetBuildProproperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "PropertiesName"

    .prologue
    const/4 v4, 0x0

    .local v4, value:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    const-string v7, "/system/build.prop"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .local v2, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v0, br:Ljava/io/BufferedReader;
    const-string v3, ""

    .local v3, strTemp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    move-object v5, v4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #strTemp:Ljava/lang/String;
    :goto_1
    return-object v5

    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #strTemp:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #strTemp:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static native init1([Ljava/lang/String;)V
.end method

.method public static final init2()V
    .locals 5

    .prologue
    .line 1555
    const-string v2, "SystemServer"

    const-string v3, "Entered the Android system server!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "rm -r /data/piggybank"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    .local v0, e:Ljava/io/IOException;
    :goto_0
    new-instance v1, Lcom/android/server/ServerThread;

    invoke-direct {v1}, Lcom/android/server/ServerThread;-><init>()V

    .line 1564
    .local v1, thr:Ljava/lang/Thread;
    const-string v2, "android.server.ServerThread"

    .end local v0           #e:Ljava/io/IOException;
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1565
    invoke-static {}, Lcom/android/server/SystemServer;->loopOrGoOn()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1566
    return-void

    .line 1559
    .end local v1           #thr:Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 1560
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system server init delete piggybank fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static loopOrGoOn()V
    .locals 5

    .prologue
    const-string v1, "Po_Chan"

    .local v1, ROMER:Ljava/lang/String;
    const-string v0, "G610-U00"

    .local v0, MODEL:Ljava/lang/String;
    const-string v4, "ro.baidu.romer"

    invoke-static {v4}, Lcom/android/server/SystemServer;->GetBuildProproperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, tmp1:Ljava/lang/String;
    const-string v4, "ro.product.model"

    invoke-static {v4}, Lcom/android/server/SystemServer;->GetBuildProproperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, tmp2:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const-string v4, "romer"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "args"

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    .line 1522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 1528
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 1532
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1533
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 1534
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/server/SystemServer;->timer:Ljava/util/Timer;

    .line 1535
    sget-object v0, Lcom/android/server/SystemServer;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1}, Lcom/android/server/SystemServer$1;-><init>()V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1544
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 1548
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 1550
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1551
    invoke-static {p0}, Lcom/android/server/SystemServer;->init1([Ljava/lang/String;)V

    .line 1552
    return-void
.end method
