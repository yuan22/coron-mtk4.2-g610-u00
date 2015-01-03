.class public Lcom/android/settings_ex/SystemUpgradeFinal;
.super Landroid/app/Activity;
.source "SystemUpgradeFinal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SystemUpgradeFinal$ResultHandler;
    }
.end annotation


# static fields
.field private static final COMMAND:Ljava/lang/String; = "command"

.field private static final DIALOG_UPGRADE_FAIL:I = 0x1

.field private static final MSG_SHOW_DILOAG:I = 0x0

.field private static final RECOVERY_DIR_PATH:Ljava/lang/String; = "/cache/recovery"

.field private static final UPGRADE_OVERTIME:I = 0x1388

.field private static final USER_SDCARD_UPDATE_CODE:Ljava/lang/String; = "--user_sd_update"


# instance fields
.field private mHandler:Lcom/android/settings_ex/SystemUpgradeFinal$ResultHandler;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/settings_ex/SystemUpgradeFinal;->mHandler:Lcom/android/settings_ex/SystemUpgradeFinal$ResultHandler;

    .line 35
    iput-object v0, p0, Lcom/android/settings_ex/SystemUpgradeFinal;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 75
    return-void
.end method

.method private sdCardExists()Z
    .locals 7

    .prologue
    .line 94
    iget-object v5, p0, Lcom/android/settings_ex/SystemUpgradeFinal;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v5, :cond_0

    .line 95
    const-string v5, "storage"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    iput-object v5, p0, Lcom/android/settings_ex/SystemUpgradeFinal;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 98
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/SystemUpgradeFinal;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 99
    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, path:Ljava/lang/String;
    const-string v5, "/mnt/usb"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 103
    const-string v5, "mounted"

    iget-object v6, p0, Lcom/android/settings_ex/SystemUpgradeFinal;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 108
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    :goto_1
    return v5

    .line 98
    .restart local v4       #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_2
    const-string v5, "SystemUpgradeFinal"

    const-string v6, "sd card is not exit"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private upgradeSDCard(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 113
    new-instance v1, Ljava/io/File;

    const-string v5, "/cache/recovery"

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, RECOVERY_DIR:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v5, "command"

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v0, COMMAND_FILE:Ljava/io/File;
    invoke-direct {p0}, Lcom/android/settings_ex/SystemUpgradeFinal;->sdCardExists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 120
    const-string v5, "SystemUpgradeFinal"

    const-string v6, "when onResume,mkdirs failures"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .local v2, command:Ljava/io/FileWriter;
    :try_start_1
    const-string v5, "--user_sd_update"

    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 134
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--local="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    const/4 v2, 0x0

    .line 144
    .end local v2           #command:Ljava/io/FileWriter;
    :goto_1
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    move-object v4, v5

    check-cast v4, Landroid/os/PowerManager;

    .line 146
    .local v4, pm:Landroid/os/PowerManager;
    const-string v5, "recovery"

    invoke-virtual {v4, v5}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 148
    .end local v4           #pm:Landroid/os/PowerManager;
    :cond_1
    return-void

    .line 123
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 125
    const-string v5, "SystemUpgradeFinal"

    const-string v6, "when onResume,delete failures"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    .restart local v2       #command:Ljava/io/FileWriter;
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 139
    const/4 v2, 0x0

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 141
    .end local v2           #command:Ljava/io/FileWriter;
    :catch_0
    move-exception v3

    .line 142
    .local v3, e:Ljava/io/IOException;
    const-string v5, "SystemUpgradeFinal"

    const-string v6, "when writing files,IO exceptions"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f040092

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 40
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 55
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b096c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0974

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b096e

    new-instance v2, Lcom/android/settings_ex/SystemUpgradeFinal$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/SystemUpgradeFinal$1;-><init>(Lcom/android/settings_ex/SystemUpgradeFinal;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    const-string v0, "SystemUpgradeFinal"

    const-string v1, "sucess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Lcom/android/settings_ex/SystemUpgradeFinal$ResultHandler;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SystemUpgradeFinal$ResultHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SystemUpgradeFinal;->mHandler:Lcom/android/settings_ex/SystemUpgradeFinal$ResultHandler;

    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/SystemUpgradeFinal;->mHandler:Lcom/android/settings_ex/SystemUpgradeFinal$ResultHandler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 50
    invoke-direct {p0, p0}, Lcom/android/settings_ex/SystemUpgradeFinal;->upgradeSDCard(Landroid/content/Context;)V

    .line 51
    return-void
.end method
