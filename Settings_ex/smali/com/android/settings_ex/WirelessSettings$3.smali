.class Lcom/android/settings_ex/WirelessSettings$3;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/WirelessSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/WirelessSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 233
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    #getter for: Lcom/android/settings_ex/WirelessSettings;->mPCHPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$300(Lcom/android/settings_ex/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_transfer_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    #getter for: Lcom/android/settings_ex/WirelessSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$400(Lcom/android/settings_ex/WirelessSettings;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    #getter for: Lcom/android/settings_ex/WirelessSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$400(Lcom/android/settings_ex/WirelessSettings;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->setGprsTransferTypeGemini(II)V

    .line 241
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    #getter for: Lcom/android/settings_ex/WirelessSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v1}, Lcom/android/settings_ex/WirelessSettings;->access$400(Lcom/android/settings_ex/WirelessSettings;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->setGprsTransferTypeGemini(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
