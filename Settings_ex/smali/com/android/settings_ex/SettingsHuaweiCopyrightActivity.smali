.class public Lcom/android/settings_ex/SettingsHuaweiCopyrightActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SettingsHuaweiCopyrightActivity.java"


# static fields
.field private static final DEFAULT_HW_COPYRIGHT_URL:Ljava/lang/String; = "file:///android_asset/html/en/huawei_copyright.html"

.field private static final HW_COPYRIGHT_PATH:Ljava/lang/String; = "html/%y%z/huawei_copyright.html"

.field private static final HW_COPYRIGHT_URL:Ljava/lang/String; = "file:///android_asset/html/%y%z/huawei_copyright.html"

.field private static final TAG:Ljava/lang/String; = "SettingsHuaweiCopyrightActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SettingsHuaweiCopyrightActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method private checkPath(Ljava/lang/String;)Z
    .locals 6
    .parameter "filePath"

    .prologue
    .line 119
    const/4 v2, 0x1

    .line 120
    .local v2, existFlag:Z
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 122
    .local v0, am:Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 124
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 128
    if-eqz v3, :cond_0

    .line 130
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 135
    :cond_0
    :goto_0
    return v2

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 128
    if-eqz v3, :cond_0

    .line 130
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 131
    :catch_1
    move-exception v4

    goto :goto_0

    .line 128
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    .line 130
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 131
    :cond_1
    :goto_1
    throw v4

    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method private getURL()Ljava/lang/String;
    .locals 8

    .prologue
    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 94
    .local v3, locale:Ljava/util/Locale;
    const-string v5, "html/%y%z/huawei_copyright.html"

    const-string v6, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, filePath:Ljava/lang/String;
    const-string v5, "%z"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, filePathWithCountry:Ljava/lang/String;
    const-string v5, "%z"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, filePathNoWithCountry:Ljava/lang/String;
    const-string v4, "file:///android_asset/html/en/huawei_copyright.html"

    .line 100
    .local v4, url:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/settings_ex/SettingsHuaweiCopyrightActivity;->checkPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 101
    const-string v5, "file:///android_asset/html/%y%z/huawei_copyright.html"

    const-string v6, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 102
    const-string v5, "%z"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 109
    :cond_0
    :goto_0
    return-object v4

    .line 103
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings_ex/SettingsHuaweiCopyrightActivity;->checkPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    const-string v5, "file:///android_asset/html/%y%z/huawei_copyright.html"

    const-string v6, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 105
    const-string v5, "%z"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 81
    const v0, 0x7f0b060f

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 84
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsHuaweiCopyrightActivity;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, url:Ljava/lang/String;
    const-string v3, "SettingsHuaweiCopyrightActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The huawei copyright file URL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    const-string v3, "SettingsHuaweiCopyrightActivity"

    const-string v4, "The huawei copyright file is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsHuaweiCopyrightActivity;->showErrorAndFinish()V

    .line 75
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 60
    .local v2, webView:Landroid/webkit/WebView;
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    new-instance v3, Lcom/android/settings_ex/SettingsHuaweiCopyrightActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/SettingsHuaweiCopyrightActivity$1;-><init>(Lcom/android/settings_ex/SettingsHuaweiCopyrightActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 70
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 71
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x7f0b0610

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 72
    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 73
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    goto :goto_0
.end method
