.class Lcom/android/settings_ex/AirplaneModeEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AirplaneModeEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    const-string v1, "AirplaneModeEnabler"

    const-string v2, "mAirplaneModeReceiver AIRPLANE_MODE_CHANGED..."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    #getter for: Lcom/android/settings_ex/AirplaneModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$000(Lcom/android/settings_ex/AirplaneModeEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 103
    .local v0, airplaneModeEnabled:Z
    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    #getter for: Lcom/android/settings_ex/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$100(Lcom/android/settings_ex/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 104
    iget-object v1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    #getter for: Lcom/android/settings_ex/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$100(Lcom/android/settings_ex/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 105
    return-void
.end method
