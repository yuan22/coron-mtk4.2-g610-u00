.class Lcom/android/settings_ex/ApnSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 173
    #calls: Lcom/android/settings_ex/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {p2}, Lcom/android/settings_ex/ApnSettings;->access$100(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    .line 174
    .local v2, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v4, Lcom/android/settings_ex/ApnSettings$5;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 241
    .end local v2           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_0
    :goto_0
    return-void

    .line 182
    .restart local v2       #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :pswitch_0
    const-string v4, "simId"

    const/4 v5, 0x2

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 183
    .local v1, simId:I
    const-string v4, "ApnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get sim Id in broadcast received is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    iget v4, v4, Lcom/android/settings_ex/ApnSettings;->mSimId:I

    if-ne v1, v4, :cond_0

    .line 185
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    iget-object v5, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    iget v5, v5, Lcom/android/settings_ex/ApnSettings;->mSimId:I

    #calls: Lcom/android/settings_ex/ApnSettings;->fillList(I)V
    invoke-static {v4, v5}, Lcom/android/settings_ex/ApnSettings;->access$000(Lcom/android/settings_ex/ApnSettings;I)V

    goto :goto_0

    .line 192
    .end local v1           #simId:I
    .end local v2           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_1
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 193
    iget-object v6, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    const-string v7, "state"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/settings_ex/ApnSettings;->mAirplaneModeEnabled:Z

    .line 194
    const-string v6, "ApnSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AIRPLANE_MODE state changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    iget-boolean v8, v8, Lcom/android/settings_ex/ApnSettings;->mAirplaneModeEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v6, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    iget-boolean v7, v7, Lcom/android/settings_ex/ApnSettings;->mAirplaneModeEnabled:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    #getter for: Lcom/android/settings_ex/ApnSettings;->mDualSimMode:I
    invoke-static {v7}, Lcom/android/settings_ex/ApnSettings;->access$200(Lcom/android/settings_ex/ApnSettings;)I

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 196
    :cond_3
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 197
    const-string v4, "ApnSettings"

    const-string v5, "receiver: ACTION_SIM_STATE_CHANGED in ApnSettings"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    iget-object v4, v4, Lcom/android/settings_ex/ApnSettings;->mNumeric:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    iget-object v4, v4, Lcom/android/settings_ex/ApnSettings;->mNumeric:Ljava/lang/String;

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    #getter for: Lcom/android/settings_ex/ApnSettings;->mSpn:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/ApnSettings;->access$300(Lcom/android/settings_ex/ApnSettings;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    #getter for: Lcom/android/settings_ex/ApnSettings;->mSpn:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/ApnSettings;->access$300(Lcom/android/settings_ex/ApnSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    #getter for: Lcom/android/settings_ex/ApnSettings;->mIMSI:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/ApnSettings;->access$400(Lcom/android/settings_ex/ApnSettings;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    #getter for: Lcom/android/settings_ex/ApnSettings;->mIMSI:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/ApnSettings;->access$400(Lcom/android/settings_ex/ApnSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    #getter for: Lcom/android/settings_ex/ApnSettings;->mPnn:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/ApnSettings;->access$500(Lcom/android/settings_ex/ApnSettings;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    #getter for: Lcom/android/settings_ex/ApnSettings;->mPnn:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/ApnSettings;->access$500(Lcom/android/settings_ex/ApnSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    #calls: Lcom/android/settings_ex/ApnSettings;->initSimState()V
    invoke-static {v4}, Lcom/android/settings_ex/ApnSettings;->access$600(Lcom/android/settings_ex/ApnSettings;)V

    .line 205
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    #calls: Lcom/android/settings_ex/ApnSettings;->setSpn()V
    invoke-static {v4}, Lcom/android/settings_ex/ApnSettings;->access$700(Lcom/android/settings_ex/ApnSettings;)V

    .line 206
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    #calls: Lcom/android/settings_ex/ApnSettings;->setIMSI()V
    invoke-static {v4}, Lcom/android/settings_ex/ApnSettings;->access$800(Lcom/android/settings_ex/ApnSettings;)V

    .line 207
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    #calls: Lcom/android/settings_ex/ApnSettings;->setPnn()V
    invoke-static {v4}, Lcom/android/settings_ex/ApnSettings;->access$900(Lcom/android/settings_ex/ApnSettings;)V

    .line 210
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    iget-boolean v4, v4, Lcom/android/settings_ex/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v4, :cond_0

    .line 211
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    iget-object v5, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    iget v5, v5, Lcom/android/settings_ex/ApnSettings;->mSimId:I

    #calls: Lcom/android/settings_ex/ApnSettings;->fillList(I)V
    invoke-static {v4, v5}, Lcom/android/settings_ex/ApnSettings;->access$000(Lcom/android/settings_ex/ApnSettings;I)V

    goto/16 :goto_0

    .line 214
    :cond_8
    const-string v6, "com.android.mms.transaction.START"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 215
    const-string v4, "ApnSettings"

    const-string v6, "receiver: TRANSACTION_START in ApnSettings"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {v5}, Lcom/android/settings_ex/ApnSettings;->access$1002(Z)Z

    .line 217
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_0

    .line 218
    :cond_9
    const-string v6, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 219
    const-string v5, "ApnSettings"

    const-string v6, "receiver: TRANSACTION_STOP in ApnSettings"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {v4}, Lcom/android/settings_ex/ApnSettings;->access$1002(Z)Z

    .line 221
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v5}, Lcom/android/settings_ex/ApnSettings;->getScreenEnableState()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_0

    .line 222
    :cond_a
    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 223
    iget-object v6, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    const-string v7, "mode"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    #setter for: Lcom/android/settings_ex/ApnSettings;->mDualSimMode:I
    invoke-static {v6, v7}, Lcom/android/settings_ex/ApnSettings;->access$202(Lcom/android/settings_ex/ApnSettings;I)I

    .line 224
    const-string v6, "ApnSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receiver, new dual sim mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    #getter for: Lcom/android/settings_ex/ApnSettings;->mDualSimMode:I
    invoke-static {v8}, Lcom/android/settings_ex/ApnSettings;->access$200(Lcom/android/settings_ex/ApnSettings;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v6, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    iget-boolean v7, v7, Lcom/android/settings_ex/ApnSettings;->mAirplaneModeEnabled:Z

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    #getter for: Lcom/android/settings_ex/ApnSettings;->mDualSimMode:I
    invoke-static {v7}, Lcom/android/settings_ex/ApnSettings;->access$200(Lcom/android/settings_ex/ApnSettings;)I

    move-result v7

    if-eqz v7, :cond_b

    :goto_2
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_b
    move v4, v5

    goto :goto_2

    .line 226
    :cond_c
    const-string v6, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 228
    iget-object v6, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 229
    .local v3, temp:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_d

    .line 230
    const-string v4, "ApnSettings"

    const-string v5, "Activity finished"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 232
    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 233
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v4, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget-object v5, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    iget v5, v5, Lcom/android/settings_ex/ApnSettings;->mSimId:I

    if-eq v4, v5, :cond_0

    .line 234
    const-string v4, "ApnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temp.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Activity finished"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v4, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
