.class public Lcom/android/settings_ex/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# static fields
.field private static final Key_HAS_BACKUP:Ljava/lang/String; = "key_has_backup"

.field private static final TAG:Ljava/lang/String; = "MasterClearConfirm"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEraseSdCard:Z

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mIsBackup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mIsBackup:Z

    .line 63
    new-instance v0, Lcom/android/settings_ex/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MasterClearConfirm$1;-><init>(Lcom/android/settings_ex/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/MasterClearConfirm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mIsBackup:Z

    return p1
.end method

.method private establishFinalConfirmationState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 82
    iget-boolean v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    if-eqz v2, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->formateSDCard()V

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v3, 0x7f0800da

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    .line 87
    iget-object v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings_ex/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isBackupAppExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v3, 0x7f0800d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 91
    .local v1, backupInfo:Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v3, 0x7f0800d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 94
    .local v0, backup:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 95
    new-instance v2, Lcom/android/settings_ex/MasterClearConfirm$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/MasterClearConfirm$2;-><init>(Lcom/android/settings_ex/MasterClearConfirm;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .end local v0           #backup:Landroid/widget/Button;
    .end local v1           #backupInfo:Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private formateSDCard()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 137
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, isFinal:Z
    if-eqz p1, :cond_0

    .line 119
    const-string v3, "key_has_backup"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 121
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mIsBackup:Z

    .line 123
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v2, "erase_sd"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z

    .line 125
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 107
    const v0, 0x7f04004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 108
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 129
    const-string v0, "key_has_backup"

    iget-boolean v1, p0, Lcom/android/settings_ex/MasterClearConfirm;->mIsBackup:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    return-void
.end method
