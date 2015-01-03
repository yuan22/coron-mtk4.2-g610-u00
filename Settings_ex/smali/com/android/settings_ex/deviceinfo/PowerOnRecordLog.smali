.class public Lcom/android/settings_ex/deviceinfo/PowerOnRecordLog;
.super Landroid/content/BroadcastReceiver;
.source "PowerOnRecordLog.java"


# static fields
.field private static final EP_TYPE:Ljava/lang/String; = "mtk-apanic"

.field private static final FILE_DB_DIR:Ljava/lang/String; = "/data/log/dbox/dbfile"

.field private static final FILE_RECORD_DIR:Ljava/lang/String; = "/data/log/dbox/srecorder"

.field private static final MAX_FILE_NUM:I = 0xa

.field private static final OR_FILENAME:Ljava/lang/String; = "/ZZ_INTERNAL"

.field private static final STR_CMD_GET_AEE_TAG:Ljava/lang/String; = "getprop debug.mtk.aee.db"

.field static final TAG:Ljava/lang/String; = "Poweronrecordlog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private addFileTimeToList(Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p2, filemap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v6, recordfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 191
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 192
    .local v2, fileList:[Ljava/io/File;
    if-nez v2, :cond_1

    .line 194
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 205
    .end local v2           #fileList:[Ljava/io/File;
    .end local v6           #recordfile:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 197
    .restart local v2       #fileList:[Ljava/io/File;
    .restart local v6       #recordfile:Ljava/io/File;
    :cond_1
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 198
    .local v5, list:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 199
    .local v7, stime:J
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 202
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #fileList:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:Ljava/io/File;
    .end local v6           #recordfile:Ljava/io/File;
    .end local v7           #stime:J
    :catch_0
    move-exception v1

    .line 203
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "Poweronrecordlog"

    const-string v10, "addFileTimeToList error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static deleteFile(Ljava/io/File;)Z
    .locals 8
    .parameter "file"

    .prologue
    const/4 v5, 0x1

    .line 238
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 239
    const-string v6, "Poweronrecordlog"

    const-string v7, "file is not exited"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    :goto_0
    return v5

    .line 243
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 244
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 245
    .local v1, fileList:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 248
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 249
    .local v4, list:Ljava/io/File;
    const-string v5, "Poweronrecordlog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file list  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/PowerOnRecordLog;->deleteFile(Ljava/io/File;)Z

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 253
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #fileList:[Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #list:Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v5

    goto :goto_0
.end method

.method private deleteOldFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 231
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v1, file_map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 233
    .local v0, deletename:Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/deviceinfo/PowerOnRecordLog;->addFileTimeToList(Ljava/lang/String;Ljava/util/Map;)V

    .line 234
    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/PowerOnRecordLog;->getOldestFilename(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 235
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/PowerOnRecordLog;->deleteFile(Ljava/io/File;)Z

    move-result v2

    return v2
.end method

.method private getFileNumber(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 218
    const/4 v2, 0x0

    .line 219
    .local v2, filenumber:I
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 222
    .local v1, fileList:[Ljava/io/File;
    if-nez v1, :cond_0

    move v3, v2

    .line 227
    .end local v1           #fileList:[Ljava/io/File;
    .end local v2           #filenumber:I
    .local v3, filenumber:I
    :goto_0
    return v3

    .line 225
    .end local v3           #filenumber:I
    .restart local v1       #fileList:[Ljava/io/File;
    .restart local v2       #filenumber:I
    :cond_0
    array-length v2, v1

    .end local v1           #fileList:[Ljava/io/File;
    :cond_1
    move v3, v2

    .line 227
    .end local v2           #filenumber:I
    .restart local v3       #filenumber:I
    goto :goto_0
.end method

.method private getOldestFilename(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, filemap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    .local v0, infoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    new-instance v1, Lcom/android/settings_ex/deviceinfo/PowerOnRecordLog$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/deviceinfo/PowerOnRecordLog$1;-><init>(Lcom/android/settings_ex/deviceinfo/PowerOnRecordLog;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 214
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 37
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    if-eqz p2, :cond_6

    const-string v34, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 35
    const/16 v16, 0x0

    .line 36
    .local v16, icmdreader:Ljava/io/InputStreamReader;
    const/4 v5, 0x0

    .line 39
    .local v5, cmdinput:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v31, strContent:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v34

    const-string v35, "getprop debug.mtk.aee.db"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v23

    .line 41
    .local v23, process:Ljava/lang/Process;
    const/16 v19, 0x0

    .line 42
    .local v19, line:Ljava/lang/String;
    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v34

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1a

    .line 43
    .end local v16           #icmdreader:Ljava/io/InputStreamReader;
    .local v17, icmdreader:Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1b

    .line 44
    .end local v5           #cmdinput:Ljava/io/BufferedReader;
    .local v6, cmdinput:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_17

    .line 45
    const-string v34, "Poweronrecordlog"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "line = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v34, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_0

    .line 48
    const-string v34, "/data/log/dbox/srecorder"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/PowerOnRecordLog;->getFileNumber(Ljava/lang/String;)I

    move-result v34

    const/16 v35, 0xa

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_1

    .line 49
    const-string v34, "/data/log/dbox/srecorder"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/PowerOnRecordLog;->deleteOldFile(Ljava/lang/String;)Z

    .line 51
    :cond_1
    const-string v34, "/data/log/dbox/dbfile"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/PowerOnRecordLog;->getFileNumber(Ljava/lang/String;)I

    move-result v34

    const/16 v35, 0xa

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_2

    .line 52
    const-string v34, "/data/log/dbox/dbfile"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/PowerOnRecordLog;->deleteOldFile(Ljava/lang/String;)Z

    .line 55
    :cond_2
    const-string v34, "ro.build.cust.id"

    const-string v35, "0"

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 56
    .local v26, sVersion:Ljava/lang/String;
    const-string v34, " "

    const-string v35, "_"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 58
    sget-object v34, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 59
    .local v18, index:I
    const-string v11, ""

    .line 60
    .local v11, dbpath:Ljava/lang/String;
    const-string v10, ""

    .line 61
    .local v10, dbname:Ljava/lang/String;
    if-ltz v18, :cond_7

    .line 62
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 64
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v35, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v35

    add-int/lit8 v35, v35, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ".dbg"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 65
    const-string v34, "Poweronrecordlog"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "dbpath = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_1
    new-instance v21, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/ZZ_INTERNAL"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v21, original_file:Ljava/io/File;
    const-string v34, "Poweronrecordlog"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "original_file.path = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->lastModified()J

    move-result-wide v29

    .line 73
    .local v29, stime:J
    const-string v34, "Poweronrecordlog"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "stime = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v33, Ljava/text/SimpleDateFormat;

    invoke-direct/range {v33 .. v33}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 76
    .local v33, timeformat:Ljava/text/SimpleDateFormat;
    const-string v34, "yyyyMMddHHmmss"

    invoke-virtual/range {v33 .. v34}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 77
    new-instance v34, Ljava/util/Date;

    move-object/from16 v0, v34

    move-wide/from16 v1, v29

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v33 .. v34}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v15

    .line 79
    .local v15, formattiem:Ljava/lang/String;
    const/16 v24, 0x0

    .line 80
    .local v24, read:Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 83
    .local v3, bufferedReader:Ljava/io/BufferedReader;
    :try_start_3
    const-string v14, "GBK"

    .line 84
    .local v14, encoding:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isFile()Z

    move-result v34

    if-eqz v34, :cond_d

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v34

    if-eqz v34, :cond_d

    .line 85
    new-instance v25, Ljava/io/InputStreamReader;

    new-instance v34, Ljava/io/FileInputStream;

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 87
    .end local v24           #read:Ljava/io/InputStreamReader;
    .local v25, read:Ljava/io/InputStreamReader;
    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1d

    .line 88
    .end local v3           #bufferedReader:Ljava/io/BufferedReader;
    .local v4, bufferedReader:Ljava/io/BufferedReader;
    const/16 v20, 0x0

    .line 89
    .local v20, lineTxt:Ljava/lang/String;
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_9

    .line 90
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 95
    :catch_0
    move-exception v12

    move-object v3, v4

    .end local v4           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #bufferedReader:Ljava/io/BufferedReader;
    move-object/from16 v24, v25

    .line 96
    .end local v14           #encoding:Ljava/lang/String;
    .end local v20           #lineTxt:Ljava/lang/String;
    .end local v25           #read:Ljava/io/InputStreamReader;
    .local v12, e:Ljava/lang/Exception;
    .restart local v24       #read:Ljava/io/InputStreamReader;
    :goto_3
    :try_start_6
    const-string v34, "Poweronrecordlog"

    const-string v35, "Read file error"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 99
    if-eqz v3, :cond_3

    .line 101
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 107
    :cond_3
    :goto_4
    if-eqz v24, :cond_4

    .line 109
    :try_start_8
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 116
    .end local v12           #e:Ljava/lang/Exception;
    :cond_4
    :goto_5
    :try_start_9
    new-instance v28, Ljava/io/File;

    const-string v34, "/data/log/dbox/srecorder"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v28, srFileDIR:Ljava/io/File;
    new-instance v27, Ljava/io/File;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "mtk-apanic"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    .local v27, srFILE:Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v34

    if-nez v34, :cond_10

    .line 119
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->mkdirs()Z

    move-result v34

    if-nez v34, :cond_12

    .line 120
    const-string v34, "Poweronrecordlog"

    const-string v35, "mkdirs failures"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 170
    if-eqz v17, :cond_5

    .line 171
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 177
    :cond_5
    :goto_6
    if-eqz v6, :cond_6

    .line 178
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 185
    .end local v3           #bufferedReader:Ljava/io/BufferedReader;
    .end local v6           #cmdinput:Ljava/io/BufferedReader;
    .end local v10           #dbname:Ljava/lang/String;
    .end local v11           #dbpath:Ljava/lang/String;
    .end local v15           #formattiem:Ljava/lang/String;
    .end local v17           #icmdreader:Ljava/io/InputStreamReader;
    .end local v18           #index:I
    .end local v19           #line:Ljava/lang/String;
    .end local v21           #original_file:Ljava/io/File;
    .end local v23           #process:Ljava/lang/Process;
    .end local v24           #read:Ljava/io/InputStreamReader;
    .end local v26           #sVersion:Ljava/lang/String;
    .end local v27           #srFILE:Ljava/io/File;
    .end local v28           #srFileDIR:Ljava/io/File;
    .end local v29           #stime:J
    .end local v31           #strContent:Ljava/lang/StringBuilder;
    .end local v33           #timeformat:Ljava/text/SimpleDateFormat;
    :cond_6
    :goto_7
    return-void

    .line 67
    .restart local v6       #cmdinput:Ljava/io/BufferedReader;
    .restart local v10       #dbname:Ljava/lang/String;
    .restart local v11       #dbpath:Ljava/lang/String;
    .restart local v17       #icmdreader:Ljava/io/InputStreamReader;
    .restart local v18       #index:I
    .restart local v19       #line:Ljava/lang/String;
    .restart local v23       #process:Ljava/lang/Process;
    .restart local v26       #sVersion:Ljava/lang/String;
    .restart local v31       #strContent:Ljava/lang/StringBuilder;
    :cond_7
    :try_start_c
    const-string v34, "Poweronrecordlog"

    const-string v35, "index error"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_1

    .line 166
    .end local v10           #dbname:Ljava/lang/String;
    .end local v11           #dbpath:Ljava/lang/String;
    .end local v18           #index:I
    .end local v26           #sVersion:Ljava/lang/String;
    :catch_1
    move-exception v12

    move-object v5, v6

    .end local v6           #cmdinput:Ljava/io/BufferedReader;
    .restart local v5       #cmdinput:Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .line 167
    .end local v17           #icmdreader:Ljava/io/InputStreamReader;
    .end local v19           #line:Ljava/lang/String;
    .end local v23           #process:Ljava/lang/Process;
    .end local v31           #strContent:Ljava/lang/StringBuilder;
    .local v12, e:Ljava/io/IOException;
    .restart local v16       #icmdreader:Ljava/io/InputStreamReader;
    :goto_8
    :try_start_d
    const-string v34, "Poweronrecordlog"

    const-string v35, "copy and rename file failed"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 170
    if-eqz v16, :cond_8

    .line 171
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_17

    .line 177
    :cond_8
    :goto_9
    if-eqz v5, :cond_6

    .line 178
    :try_start_f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_7

    .line 180
    :catch_2
    move-exception v12

    .line 181
    const-string v34, "Poweronrecordlog"

    const-string v35, "cmdinput close failed"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v5           #cmdinput:Ljava/io/BufferedReader;
    .end local v12           #e:Ljava/io/IOException;
    .end local v16           #icmdreader:Ljava/io/InputStreamReader;
    .restart local v4       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v6       #cmdinput:Ljava/io/BufferedReader;
    .restart local v10       #dbname:Ljava/lang/String;
    .restart local v11       #dbpath:Ljava/lang/String;
    .restart local v14       #encoding:Ljava/lang/String;
    .restart local v15       #formattiem:Ljava/lang/String;
    .restart local v17       #icmdreader:Ljava/io/InputStreamReader;
    .restart local v18       #index:I
    .restart local v19       #line:Ljava/lang/String;
    .restart local v20       #lineTxt:Ljava/lang/String;
    .restart local v21       #original_file:Ljava/io/File;
    .restart local v23       #process:Ljava/lang/Process;
    .restart local v25       #read:Ljava/io/InputStreamReader;
    .restart local v26       #sVersion:Ljava/lang/String;
    .restart local v29       #stime:J
    .restart local v31       #strContent:Ljava/lang/StringBuilder;
    .restart local v33       #timeformat:Ljava/text/SimpleDateFormat;
    :cond_9
    move-object v3, v4

    .end local v4           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #bufferedReader:Ljava/io/BufferedReader;
    move-object/from16 v24, v25

    .line 99
    .end local v20           #lineTxt:Ljava/lang/String;
    .end local v25           #read:Ljava/io/InputStreamReader;
    .restart local v24       #read:Ljava/io/InputStreamReader;
    :goto_a
    if-eqz v3, :cond_a

    .line 101
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    .line 107
    :cond_a
    :goto_b
    if-eqz v24, :cond_4

    .line 109
    :try_start_11
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_5

    .line 110
    :catch_3
    move-exception v13

    .line 111
    .local v13, e2:Ljava/lang/Exception;
    :try_start_12
    const-string v34, "Poweronrecordlog"

    const-string v35, "close read fail"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_5

    .line 169
    .end local v3           #bufferedReader:Ljava/io/BufferedReader;
    .end local v10           #dbname:Ljava/lang/String;
    .end local v11           #dbpath:Ljava/lang/String;
    .end local v13           #e2:Ljava/lang/Exception;
    .end local v14           #encoding:Ljava/lang/String;
    .end local v15           #formattiem:Ljava/lang/String;
    .end local v18           #index:I
    .end local v21           #original_file:Ljava/io/File;
    .end local v24           #read:Ljava/io/InputStreamReader;
    .end local v26           #sVersion:Ljava/lang/String;
    .end local v29           #stime:J
    .end local v33           #timeformat:Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v34

    move-object v5, v6

    .end local v6           #cmdinput:Ljava/io/BufferedReader;
    .restart local v5       #cmdinput:Ljava/io/BufferedReader;
    move-object/from16 v16, v17

    .line 170
    .end local v17           #icmdreader:Ljava/io/InputStreamReader;
    .end local v19           #line:Ljava/lang/String;
    .end local v23           #process:Ljava/lang/Process;
    .end local v31           #strContent:Ljava/lang/StringBuilder;
    .restart local v16       #icmdreader:Ljava/io/InputStreamReader;
    :goto_c
    if-eqz v16, :cond_b

    .line 171
    :try_start_13
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStreamReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_18

    .line 177
    :cond_b
    :goto_d
    if-eqz v5, :cond_c

    .line 178
    :try_start_14
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_19

    .line 182
    :cond_c
    :goto_e
    throw v34

    .line 93
    .end local v5           #cmdinput:Ljava/io/BufferedReader;
    .end local v16           #icmdreader:Ljava/io/InputStreamReader;
    .restart local v3       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v6       #cmdinput:Ljava/io/BufferedReader;
    .restart local v10       #dbname:Ljava/lang/String;
    .restart local v11       #dbpath:Ljava/lang/String;
    .restart local v14       #encoding:Ljava/lang/String;
    .restart local v15       #formattiem:Ljava/lang/String;
    .restart local v17       #icmdreader:Ljava/io/InputStreamReader;
    .restart local v18       #index:I
    .restart local v19       #line:Ljava/lang/String;
    .restart local v21       #original_file:Ljava/io/File;
    .restart local v23       #process:Ljava/lang/Process;
    .restart local v24       #read:Ljava/io/InputStreamReader;
    .restart local v26       #sVersion:Ljava/lang/String;
    .restart local v29       #stime:J
    .restart local v31       #strContent:Ljava/lang/StringBuilder;
    .restart local v33       #timeformat:Ljava/text/SimpleDateFormat;
    :cond_d
    :try_start_15
    const-string v34, "Poweronrecordlog"

    const-string v35, "Can not find file"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    goto :goto_a

    .line 95
    .end local v14           #encoding:Ljava/lang/String;
    :catch_4
    move-exception v12

    goto/16 :goto_3

    .line 102
    .restart local v14       #encoding:Ljava/lang/String;
    :catch_5
    move-exception v13

    .line 103
    .restart local v13       #e2:Ljava/lang/Exception;
    :try_start_16
    const-string v34, "Poweronrecordlog"

    const-string v35, "close bufferedReader fail"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 102
    .end local v13           #e2:Ljava/lang/Exception;
    .end local v14           #encoding:Ljava/lang/String;
    .local v12, e:Ljava/lang/Exception;
    :catch_6
    move-exception v13

    .line 103
    .restart local v13       #e2:Ljava/lang/Exception;
    const-string v34, "Poweronrecordlog"

    const-string v35, "close bufferedReader fail"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 110
    .end local v13           #e2:Ljava/lang/Exception;
    :catch_7
    move-exception v13

    .line 111
    .restart local v13       #e2:Ljava/lang/Exception;
    const-string v34, "Poweronrecordlog"

    const-string v35, "close read fail"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1

    goto/16 :goto_5

    .line 99
    .end local v12           #e:Ljava/lang/Exception;
    .end local v13           #e2:Ljava/lang/Exception;
    :catchall_1
    move-exception v34

    :goto_f
    if-eqz v3, :cond_e

    .line 101
    :try_start_17
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1

    .line 107
    :cond_e
    :goto_10
    if-eqz v24, :cond_f

    .line 109
    :try_start_18
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStreamReader;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1

    .line 112
    :cond_f
    :goto_11
    :try_start_19
    throw v34

    .line 102
    :catch_8
    move-exception v13

    .line 103
    .restart local v13       #e2:Ljava/lang/Exception;
    const-string v35, "Poweronrecordlog"

    const-string v36, "close bufferedReader fail"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 110
    .end local v13           #e2:Ljava/lang/Exception;
    :catch_9
    move-exception v13

    .line 111
    .restart local v13       #e2:Ljava/lang/Exception;
    const-string v35, "Poweronrecordlog"

    const-string v36, "close read fail"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1

    goto :goto_11

    .line 173
    .end local v13           #e2:Ljava/lang/Exception;
    .restart local v27       #srFILE:Ljava/io/File;
    .restart local v28       #srFileDIR:Ljava/io/File;
    :catch_a
    move-exception v12

    .line 174
    .local v12, e:Ljava/io/IOException;
    const-string v34, "Poweronrecordlog"

    const-string v35, "icmdreader close failed"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 180
    .end local v12           #e:Ljava/io/IOException;
    :catch_b
    move-exception v12

    .line 181
    .restart local v12       #e:Ljava/io/IOException;
    const-string v34, "Poweronrecordlog"

    const-string v35, "cmdinput close failed"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 124
    .end local v12           #e:Ljava/io/IOException;
    :cond_10
    :try_start_1a
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v34

    if-eqz v34, :cond_12

    .line 125
    const-string v34, "Poweronrecordlog"

    const-string v35, "File exit"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1

    .line 170
    if-eqz v17, :cond_11

    .line 171
    :try_start_1b
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStreamReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d

    .line 177
    :cond_11
    :goto_12
    if-eqz v6, :cond_6

    .line 178
    :try_start_1c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_c

    goto/16 :goto_7

    .line 180
    :catch_c
    move-exception v12

    .line 181
    .restart local v12       #e:Ljava/io/IOException;
    const-string v34, "Poweronrecordlog"

    const-string v35, "cmdinput close failed"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 173
    .end local v12           #e:Ljava/io/IOException;
    :catch_d
    move-exception v12

    .line 174
    .restart local v12       #e:Ljava/io/IOException;
    const-string v34, "Poweronrecordlog"

    const-string v35, "icmdreader close failed"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 130
    .end local v12           #e:Ljava/io/IOException;
    :cond_12
    const/4 v7, 0x0

    .line 132
    .local v7, command:Ljava/io/FileWriter;
    :try_start_1d
    new-instance v8, Ljava/io/FileWriter;

    move-object/from16 v0, v27

    invoke-direct {v8, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_10

    .line 133
    .end local v7           #command:Ljava/io/FileWriter;
    .local v8, command:Ljava/io/FileWriter;
    :try_start_1e
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 134
    const-string v34, "\n"

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1c

    .line 139
    if-eqz v8, :cond_19

    .line 141
    :try_start_1f
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1

    move-object v7, v8

    .line 149
    .end local v8           #command:Ljava/io/FileWriter;
    .restart local v7       #command:Ljava/io/FileWriter;
    :cond_13
    :goto_13
    :try_start_20
    new-instance v9, Ljava/io/File;

    const-string v34, "/data/log/dbox/dbfile"

    move-object/from16 v0, v34

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v9, dbFileDIR:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v34

    if-nez v34, :cond_16

    .line 151
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v34

    if-nez v34, :cond_16

    .line 152
    const-string v34, "Poweronrecordlog"

    const-string v35, "mkdirs FILE_DB_DIR failures"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1

    .line 170
    if-eqz v17, :cond_14

    .line 171
    :try_start_21
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStreamReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_13

    .line 177
    :cond_14
    :goto_14
    if-eqz v6, :cond_6

    .line 178
    :try_start_22
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_e

    goto/16 :goto_7

    .line 180
    :catch_e
    move-exception v12

    .line 181
    .restart local v12       #e:Ljava/io/IOException;
    const-string v34, "Poweronrecordlog"

    const-string v35, "cmdinput close failed"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 142
    .end local v7           #command:Ljava/io/FileWriter;
    .end local v9           #dbFileDIR:Ljava/io/File;
    .end local v12           #e:Ljava/io/IOException;
    .restart local v8       #command:Ljava/io/FileWriter;
    :catch_f
    move-exception v13

    .line 143
    .restart local v13       #e2:Ljava/lang/Exception;
    :try_start_23
    const-string v34, "Poweronrecordlog"

    const-string v35, "command close failures"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1

    move-object v7, v8

    .line 144
    .end local v8           #command:Ljava/io/FileWriter;
    .restart local v7       #command:Ljava/io/FileWriter;
    goto :goto_13

    .line 136
    .end local v13           #e2:Ljava/lang/Exception;
    :catch_10
    move-exception v12

    .line 137
    .restart local v12       #e:Ljava/io/IOException;
    :goto_15
    :try_start_24
    const-string v34, "Poweronrecordlog"

    const-string v35, "write command failures"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    .line 139
    if-eqz v7, :cond_13

    .line 141
    :try_start_25
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_11
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_1

    goto :goto_13

    .line 142
    :catch_11
    move-exception v13

    .line 143
    .restart local v13       #e2:Ljava/lang/Exception;
    :try_start_26
    const-string v34, "Poweronrecordlog"

    const-string v35, "command close failures"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1

    goto :goto_13

    .line 139
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #e2:Ljava/lang/Exception;
    :catchall_2
    move-exception v34

    :goto_16
    if-eqz v7, :cond_15

    .line 141
    :try_start_27
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_12
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_1

    .line 144
    :cond_15
    :goto_17
    :try_start_28
    throw v34

    .line 142
    :catch_12
    move-exception v13

    .line 143
    .restart local v13       #e2:Ljava/lang/Exception;
    const-string v35, "Poweronrecordlog"

    const-string v36, "command close failures"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1

    goto :goto_17

    .line 173
    .end local v13           #e2:Ljava/lang/Exception;
    .restart local v9       #dbFileDIR:Ljava/io/File;
    :catch_13
    move-exception v12

    .line 174
    .restart local v12       #e:Ljava/io/IOException;
    const-string v34, "Poweronrecordlog"

    const-string v35, "icmdreader close failed"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 158
    .end local v12           #e:Ljava/io/IOException;
    :cond_16
    :try_start_29
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "cp "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/data/log/dbox/dbfile"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "/"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "mtk-apanic"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ".dbg"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 159
    .local v32, strcmdcopyfile:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v22

    .line 160
    .local v22, pcopy:Ljava/lang/Process;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Process;->waitFor()I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_14
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_1

    goto/16 :goto_0

    .line 161
    .end local v22           #pcopy:Ljava/lang/Process;
    .end local v32           #strcmdcopyfile:Ljava/lang/String;
    :catch_14
    move-exception v12

    .line 162
    .local v12, e:Ljava/lang/InterruptedException;
    :try_start_2a
    const-string v34, "Poweronrecordlog"

    const-string v35, "copy file failed"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_1

    goto/16 :goto_0

    .line 170
    .end local v3           #bufferedReader:Ljava/io/BufferedReader;
    .end local v7           #command:Ljava/io/FileWriter;
    .end local v9           #dbFileDIR:Ljava/io/File;
    .end local v10           #dbname:Ljava/lang/String;
    .end local v11           #dbpath:Ljava/lang/String;
    .end local v12           #e:Ljava/lang/InterruptedException;
    .end local v15           #formattiem:Ljava/lang/String;
    .end local v18           #index:I
    .end local v21           #original_file:Ljava/io/File;
    .end local v24           #read:Ljava/io/InputStreamReader;
    .end local v26           #sVersion:Ljava/lang/String;
    .end local v27           #srFILE:Ljava/io/File;
    .end local v28           #srFileDIR:Ljava/io/File;
    .end local v29           #stime:J
    .end local v33           #timeformat:Ljava/text/SimpleDateFormat;
    :cond_17
    if-eqz v17, :cond_18

    .line 171
    :try_start_2b
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStreamReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_16

    .line 177
    :cond_18
    :goto_18
    if-eqz v6, :cond_6

    .line 178
    :try_start_2c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_15

    goto/16 :goto_7

    .line 180
    :catch_15
    move-exception v12

    .line 181
    .local v12, e:Ljava/io/IOException;
    const-string v34, "Poweronrecordlog"

    const-string v35, "cmdinput close failed"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 173
    .end local v12           #e:Ljava/io/IOException;
    :catch_16
    move-exception v12

    .line 174
    .restart local v12       #e:Ljava/io/IOException;
    const-string v34, "Poweronrecordlog"

    const-string v35, "icmdreader close failed"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 173
    .end local v6           #cmdinput:Ljava/io/BufferedReader;
    .end local v17           #icmdreader:Ljava/io/InputStreamReader;
    .end local v19           #line:Ljava/lang/String;
    .end local v23           #process:Ljava/lang/Process;
    .end local v31           #strContent:Ljava/lang/StringBuilder;
    .restart local v5       #cmdinput:Ljava/io/BufferedReader;
    .restart local v16       #icmdreader:Ljava/io/InputStreamReader;
    :catch_17
    move-exception v12

    .line 174
    const-string v34, "Poweronrecordlog"

    const-string v35, "icmdreader close failed"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 173
    .end local v12           #e:Ljava/io/IOException;
    :catch_18
    move-exception v12

    .line 174
    .restart local v12       #e:Ljava/io/IOException;
    const-string v35, "Poweronrecordlog"

    const-string v36, "icmdreader close failed"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 180
    .end local v12           #e:Ljava/io/IOException;
    :catch_19
    move-exception v12

    .line 181
    .restart local v12       #e:Ljava/io/IOException;
    const-string v35, "Poweronrecordlog"

    const-string v36, "cmdinput close failed"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 169
    .end local v12           #e:Ljava/io/IOException;
    :catchall_3
    move-exception v34

    goto/16 :goto_c

    .end local v16           #icmdreader:Ljava/io/InputStreamReader;
    .restart local v17       #icmdreader:Ljava/io/InputStreamReader;
    .restart local v19       #line:Ljava/lang/String;
    .restart local v23       #process:Ljava/lang/Process;
    .restart local v31       #strContent:Ljava/lang/StringBuilder;
    :catchall_4
    move-exception v34

    move-object/from16 v16, v17

    .end local v17           #icmdreader:Ljava/io/InputStreamReader;
    .restart local v16       #icmdreader:Ljava/io/InputStreamReader;
    goto/16 :goto_c

    .line 166
    .end local v19           #line:Ljava/lang/String;
    .end local v23           #process:Ljava/lang/Process;
    .end local v31           #strContent:Ljava/lang/StringBuilder;
    :catch_1a
    move-exception v12

    goto/16 :goto_8

    .end local v16           #icmdreader:Ljava/io/InputStreamReader;
    .restart local v17       #icmdreader:Ljava/io/InputStreamReader;
    .restart local v19       #line:Ljava/lang/String;
    .restart local v23       #process:Ljava/lang/Process;
    .restart local v31       #strContent:Ljava/lang/StringBuilder;
    :catch_1b
    move-exception v12

    move-object/from16 v16, v17

    .end local v17           #icmdreader:Ljava/io/InputStreamReader;
    .restart local v16       #icmdreader:Ljava/io/InputStreamReader;
    goto/16 :goto_8

    .line 139
    .end local v5           #cmdinput:Ljava/io/BufferedReader;
    .end local v16           #icmdreader:Ljava/io/InputStreamReader;
    .restart local v3       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v6       #cmdinput:Ljava/io/BufferedReader;
    .restart local v8       #command:Ljava/io/FileWriter;
    .restart local v10       #dbname:Ljava/lang/String;
    .restart local v11       #dbpath:Ljava/lang/String;
    .restart local v15       #formattiem:Ljava/lang/String;
    .restart local v17       #icmdreader:Ljava/io/InputStreamReader;
    .restart local v18       #index:I
    .restart local v21       #original_file:Ljava/io/File;
    .restart local v24       #read:Ljava/io/InputStreamReader;
    .restart local v26       #sVersion:Ljava/lang/String;
    .restart local v27       #srFILE:Ljava/io/File;
    .restart local v28       #srFileDIR:Ljava/io/File;
    .restart local v29       #stime:J
    .restart local v33       #timeformat:Ljava/text/SimpleDateFormat;
    :catchall_5
    move-exception v34

    move-object v7, v8

    .end local v8           #command:Ljava/io/FileWriter;
    .restart local v7       #command:Ljava/io/FileWriter;
    goto/16 :goto_16

    .line 136
    .end local v7           #command:Ljava/io/FileWriter;
    .restart local v8       #command:Ljava/io/FileWriter;
    :catch_1c
    move-exception v12

    move-object v7, v8

    .end local v8           #command:Ljava/io/FileWriter;
    .restart local v7       #command:Ljava/io/FileWriter;
    goto/16 :goto_15

    .line 99
    .end local v7           #command:Ljava/io/FileWriter;
    .end local v24           #read:Ljava/io/InputStreamReader;
    .end local v27           #srFILE:Ljava/io/File;
    .end local v28           #srFileDIR:Ljava/io/File;
    .restart local v14       #encoding:Ljava/lang/String;
    .restart local v25       #read:Ljava/io/InputStreamReader;
    :catchall_6
    move-exception v34

    move-object/from16 v24, v25

    .end local v25           #read:Ljava/io/InputStreamReader;
    .restart local v24       #read:Ljava/io/InputStreamReader;
    goto/16 :goto_f

    .end local v3           #bufferedReader:Ljava/io/BufferedReader;
    .end local v24           #read:Ljava/io/InputStreamReader;
    .restart local v4       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v20       #lineTxt:Ljava/lang/String;
    .restart local v25       #read:Ljava/io/InputStreamReader;
    :catchall_7
    move-exception v34

    move-object v3, v4

    .end local v4           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #bufferedReader:Ljava/io/BufferedReader;
    move-object/from16 v24, v25

    .end local v25           #read:Ljava/io/InputStreamReader;
    .restart local v24       #read:Ljava/io/InputStreamReader;
    goto/16 :goto_f

    .line 95
    .end local v20           #lineTxt:Ljava/lang/String;
    .end local v24           #read:Ljava/io/InputStreamReader;
    .restart local v25       #read:Ljava/io/InputStreamReader;
    :catch_1d
    move-exception v12

    move-object/from16 v24, v25

    .end local v25           #read:Ljava/io/InputStreamReader;
    .restart local v24       #read:Ljava/io/InputStreamReader;
    goto/16 :goto_3

    .end local v14           #encoding:Ljava/lang/String;
    .restart local v8       #command:Ljava/io/FileWriter;
    .restart local v27       #srFILE:Ljava/io/File;
    .restart local v28       #srFileDIR:Ljava/io/File;
    :cond_19
    move-object v7, v8

    .end local v8           #command:Ljava/io/FileWriter;
    .restart local v7       #command:Ljava/io/FileWriter;
    goto/16 :goto_13
.end method
