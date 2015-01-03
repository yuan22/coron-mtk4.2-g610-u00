.class public Lcom/mediatek/upgradeforschepower/UpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpgradeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/upgradeforschepower/UpgradeReceiver$1;,
        Lcom/mediatek/upgradeforschepower/UpgradeReceiver$CopySchPwrsDbTask;
    }
.end annotation


# static fields
.field private static final SCHPWRS_DB_PATH:Ljava/lang/String; = "data/data/com.android.settings_ex/databases/schpwrs.db"

.field private static final TAG:Ljava/lang/String; = "UpgradeReceiver"

.field private static final TEMP_DB_PATH:Ljava/lang/String; = "/data/schpwrs.db"


# instance fields
.field private mSettingSchPwrsDbFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/upgradeforschepower/UpgradeReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mediatek/upgradeforschepower/UpgradeReceiver;->copyDbFileToPhoneStorage()Z

    move-result v0

    return v0
.end method

.method private copyDbFileToPhoneStorage()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 49
    new-instance v7, Ljava/io/File;

    const-string v9, "/data/schpwrs.db"

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v7, tempDbFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 51
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 53
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/mediatek/upgradeforschepower/UpgradeReceiver;->mSettingSchPwrsDbFile:Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 59
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 60
    .local v0, buffer:[B
    const/4 v6, 0x0

    .line 62
    .local v6, length:I
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_0

    .line 63
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/io/IOException;
    const-string v9, "UpgradeReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 72
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #length:I
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_1
    return v8

    .line 55
    :catch_1
    move-exception v1

    .line 56
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v9, "UpgradeReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileNotFoundException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 65
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #length:I
    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 66
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 67
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 72
    const/4 v8, 0x1

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 55
    .end local v0           #buffer:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v6           #length:I
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    const-string v1, "UpgradeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v1, Ljava/io/File;

    const-string v2, "data/data/com.android.settings_ex/databases/schpwrs.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/upgradeforschepower/UpgradeReceiver;->mSettingSchPwrsDbFile:Ljava/io/File;

    .line 27
    iget-object v1, p0, Lcom/mediatek/upgradeforschepower/UpgradeReceiver;->mSettingSchPwrsDbFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    new-instance v0, Lcom/mediatek/upgradeforschepower/UpgradeReceiver$CopySchPwrsDbTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/upgradeforschepower/UpgradeReceiver$CopySchPwrsDbTask;-><init>(Lcom/mediatek/upgradeforschepower/UpgradeReceiver;Lcom/mediatek/upgradeforschepower/UpgradeReceiver$1;)V

    .line 29
    .local v0, copySchPwrsDbTask:Lcom/mediatek/upgradeforschepower/UpgradeReceiver$CopySchPwrsDbTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 33
    .end local v0           #copySchPwrsDbTask:Lcom/mediatek/upgradeforschepower/UpgradeReceiver$CopySchPwrsDbTask;
    :goto_0
    return-void

    .line 31
    :cond_0
    const-string v1, "UpgradeReceiver"

    const-string v2, "com.android.settings_ex/databases/schpwrs.db does not exist"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
