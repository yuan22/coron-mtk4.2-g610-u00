.class public Lcom/android/settings_ex/SystemUpgradeCheck;
.super Landroid/app/Activity;
.source "SystemUpgradeCheck.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MENU_ID_CANCEL:I = 0x1

.field private static final MENU_ID_CONFIRM:I = 0x2


# instance fields
.field private UPDATE_FILE_NAME:Ljava/lang/String;

.field private mBackup:Landroid/widget/Button;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const-string v0, "/dload"

    iput-object v0, p0, Lcom/android/settings_ex/SystemUpgradeCheck;->UPDATE_FILE_NAME:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SystemUpgradeCheck;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method private intentToSystemUpgradeSelect()V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/SystemUpgradeSelect;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, intentTemp:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 123
    const-string v1, "SystemUpgrade"

    const-string v2, "intentToSystemUpgradeSelect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 125
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/SystemUpgradeCheck;->mBackup:Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    .line 113
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->startBackupInfo(Landroid/content/Context;)Z

    .line 115
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f040091

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 40
    const v0, 0x7f08018d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/SystemUpgradeCheck;->mBackup:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/SystemUpgradeCheck;->mBackup:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isBackupAppExist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/SystemUpgradeCheck;->mBackup:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SystemUpgradeCheck;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_1

    .line 48
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings_ex/SystemUpgradeCheck;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 50
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    const v0, 0x7f0b0968

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 58
    const v0, 0x7f0b0969

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_0
    return v5

    .line 68
    :pswitch_0
    const-string v6, "SystemUpgrade"

    const-string v7, "UpgradeCancel"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 72
    :pswitch_1
    const-string v6, "SystemUpgrade"

    const-string v7, "Upgrade Check confirm"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, file:Ljava/io/File;
    iget-object v6, p0, Lcom/android/settings_ex/SystemUpgradeCheck;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 76
    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 77
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/SystemUpgradeCheck;->UPDATE_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    const-string v6, "SystemUpgrade"

    const-string v7, "the sdcard folder load status normal"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_0
    if-eqz v1, :cond_3

    .line 87
    const-string v6, "SystemUpgrade"

    const-string v7, "SDcardExist,sucess!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lcom/android/settings_ex/SystemUpgradeCheck;->intentToSystemUpgradeSelect()V

    goto :goto_0

    .line 82
    .restart local v4       #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v1, 0x0

    .line 75
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_3
    const-string v6, "SystemUpgrade"

    const-string v7, "SDcardNotExist,fail!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f020066

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0b096c

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0b096d

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0b096e

    new-instance v8, Lcom/android/settings_ex/SystemUpgradeCheck$1;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/SystemUpgradeCheck$1;-><init>(Lcom/android/settings_ex/SystemUpgradeCheck;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
