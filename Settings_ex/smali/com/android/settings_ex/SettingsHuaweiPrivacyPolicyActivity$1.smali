.class Lcom/android/settings_ex/SettingsHuaweiPrivacyPolicyActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SettingsHuaweiPrivacyPolicyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsHuaweiPrivacyPolicyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsHuaweiPrivacyPolicyActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsHuaweiPrivacyPolicyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings_ex/SettingsHuaweiPrivacyPolicyActivity$1;->this$0:Lcom/android/settings_ex/SettingsHuaweiPrivacyPolicyActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/SettingsHuaweiPrivacyPolicyActivity$1;->this$0:Lcom/android/settings_ex/SettingsHuaweiPrivacyPolicyActivity;

    #getter for: Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;
    invoke-static {v0}, Lcom/android/settings_ex/SettingsHuaweiPrivacyPolicyActivity;->access$000(Lcom/android/settings_ex/SettingsHuaweiPrivacyPolicyActivity;)Lcom/android/internal/app/AlertController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SettingsHuaweiPrivacyPolicyActivity$1;->this$0:Lcom/android/settings_ex/SettingsHuaweiPrivacyPolicyActivity;

    const v2, 0x7f0b0613

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method
