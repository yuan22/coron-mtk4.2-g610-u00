.class Lcom/android/settings_ex/deviceinfo/Status$1;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Status$1;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 175
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/Status$1;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    #getter for: Lcom/android/settings_ex/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/Status;->access$200(Lcom/android/settings_ex/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v5

    invoke-static {p2}, Lcom/android/settings_ex/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/Status$1;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    #getter for: Lcom/android/settings_ex/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/Status;->access$300(Lcom/android/settings_ex/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/Status$1;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/android/settings_ex/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, operatorName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 180
    .local v3, plmn:Ljava/lang/String;
    const/4 v4, 0x0

    .line 181
    .local v4, spn:Ljava/lang/String;
    const-string v5, "showPlmn"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 182
    const-string v5, "plmn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    if-eqz v3, :cond_2

    .line 184
    move-object v1, v3

    .line 187
    :cond_2
    const-string v5, "showSpn"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 188
    const-string v5, "spn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 189
    if-eqz v4, :cond_3

    .line 190
    move-object v1, v4

    .line 193
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/Status$1;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    const-string v6, "operator_name"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 194
    .local v2, p:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 195
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/Status$1;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    #getter for: Lcom/android/settings_ex/deviceinfo/Status;->mExt:Lcom/android/settings_ex/ext/IStatusExt;
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/Status;->access$400(Lcom/android/settings_ex/deviceinfo/Status;)Lcom/android/settings_ex/ext/IStatusExt;

    move-result-object v5

    invoke-interface {v5, v2, v1}, Lcom/android/settings_ex/ext/IStatusExt;->updateOpNameFromRec(Landroid/preference/Preference;Ljava/lang/String;)V

    goto :goto_0
.end method
