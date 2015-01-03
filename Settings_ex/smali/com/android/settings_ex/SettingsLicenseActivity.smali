.class public Lcom/android/settings_ex/SettingsLicenseActivity;
.super Landroid/app/Activity;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SettingsLicenseActivity$LicenseFileLoader;
    }
.end annotation


# static fields
.field private static final DEFAULT_LICENSE_PATH:Ljava/lang/String; = "/system/etc/NOTICE.html.gz"

.field private static final LOGV:Z = false

.field private static final PROPERTY_LICENSE_PATH:Ljava/lang/String; = "ro.config.license_path"

.field private static final TAG:Ljava/lang/String; = "SettingsLicenseActivity"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSpinnerDlg:Landroid/app/ProgressDialog;

.field private mTextDlg:Landroid/app/AlertDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 125
    iput-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 126
    iput-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 127
    iput-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 128
    iput-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SettingsLicenseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/SettingsLicenseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsLicenseActivity;->showErrorAndFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/SettingsLicenseActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/SettingsLicenseActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 221
    const v0, 0x7f0b0607

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 223
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 224
    return-void
.end method

.method private showPageOfText(Ljava/lang/String;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 190
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0606

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 195
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings_ex/SettingsLicenseActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/SettingsLicenseActivity$2;-><init>(Lcom/android/settings_ex/SettingsLicenseActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/android/settings_ex/SettingsLicenseActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/SettingsLicenseActivity$3;-><init>(Lcom/android/settings_ex/SettingsLicenseActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 215
    iput-object v1, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 216
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const-string v5, "ro.config.license_path"

    const-string v6, "/system/etc/NOTICE.html.gz"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, fileName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 137
    const-string v5, "SettingsLicenseActivity"

    const-string v6, "The system property for the license file is empty."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 175
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0, v7}, Landroid/app/Activity;->setVisible(Z)V

    .line 146
    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 148
    iget-object v5, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 150
    new-instance v5, Lcom/android/settings_ex/SettingsLicenseActivity$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/SettingsLicenseActivity$1;-><init>(Lcom/android/settings_ex/SettingsLicenseActivity;)V

    iput-object v5, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 165
    const v5, 0x7f0b0606

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 166
    .local v4, title:Ljava/lang/CharSequence;
    const v5, 0x7f0b0608

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 168
    .local v1, msg:Ljava/lang/CharSequence;
    const/4 v5, 0x1

    invoke-static {p0, v4, v1, v5, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 169
    .local v2, pd:Landroid/app/ProgressDialog;
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 170
    iput-object v2, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 173
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/settings_ex/SettingsLicenseActivity$LicenseFileLoader;

    iget-object v6, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v0, v6}, Lcom/android/settings_ex/SettingsLicenseActivity$LicenseFileLoader;-><init>(Lcom/android/settings_ex/SettingsLicenseActivity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 174
    .local v3, thread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 185
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 186
    return-void
.end method
