.class Lcom/android/settings_ex/DataUsageSummary$4;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 415
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, action:Ljava/lang/String;
    const/4 v2, 0x0

    .line 418
    .local v2, needUpdate:Z
    const-string v8, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 419
    const-string v8, "DataUsage"

    const-string v9, "Receive Intent :ACTION_SIM_INDICATOR_STATE_CHANGED "

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v8, "slotId"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 421
    .local v5, slotId:I
    const-string v8, "state"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 422
    .local v4, simStatus:I
    const-string v8, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive notification: state of sim slot "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    if-ltz v5, :cond_0

    if-ltz v4, :cond_0

    .line 424
    const/4 v2, 0x1

    .line 499
    .end local v4           #simStatus:I
    .end local v5           #slotId:I
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 500
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v9}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/TabHost;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->access$102(Lcom/android/settings_ex/DataUsageSummary;Ljava/lang/String;)Ljava/lang/String;

    .line 501
    const-string v8, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSavedCurrentTab "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updateGeminiSimStatus()V
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageSummary;->access$300(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 503
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updateBody()V
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageSummary;->access$400(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 505
    :cond_1
    return-void

    .line 427
    :cond_2
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 428
    const-string v8, "DataUsage"

    const-string v9, "Receive Intent : ACTION_AIRPLANE_MODE_CHANGED : "

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings_ex/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v9

    #setter for: Lcom/android/settings_ex/DataUsageSummary;->mIsAirplaneModeOn:Z
    invoke-static {v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->access$902(Lcom/android/settings_ex/DataUsageSummary;Z)Z

    .line 430
    const/4 v2, 0x1

    goto :goto_0

    .line 431
    :cond_3
    const-string v8, "com.mediatek.server.action.ACTION_POLICY_CREATED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 432
    const-string v8, "DataUsage"

    const-string v9, "Receive Intent : ACTION_POLICYMGR_CREATED,create policy when not exist"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageSummary;->access$1000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->read()V

    .line 434
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageSummary;->access$1100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 435
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v8, v10}, Lcom/android/settings_ex/DataUsageSummary;->access$800(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_0

    .line 438
    :cond_4
    const-string v8, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 439
    const-string v8, "apnType"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, apnTypeList:Ljava/lang/String;
    const-string v8, "state"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 443
    .local v7, str:Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 444
    const-class v8, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v8, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 449
    .local v6, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :goto_1
    const-string v8, "simId"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 451
    .local v3, simId:I
    const-string v8, "default"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v6, v8, :cond_6

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$1200()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 453
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageSummary;->access$1300(Lcom/android/settings_ex/DataUsageSummary;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x7d1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    invoke-static {v12}, Lcom/android/settings_ex/DataUsageSummary;->access$1202(Z)Z

    .line 455
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageSummary;->access$1400(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 456
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageSummary;->access$1100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 457
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v8, v10}, Lcom/android/settings_ex/DataUsageSummary;->access$800(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 459
    :cond_5
    const-string v8, "DataUsage"

    const-string v9, "attach over"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_6
    const-string v8, "default"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v6, v8, :cond_0

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$1200()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 463
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageSummary;->access$1300(Lcom/android/settings_ex/DataUsageSummary;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x7d0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    invoke-static {v12}, Lcom/android/settings_ex/DataUsageSummary;->access$1202(Z)Z

    .line 465
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageSummary;->access$1400(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 466
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageSummary;->access$1100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 467
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v8, v10}, Lcom/android/settings_ex/DataUsageSummary;->access$800(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 469
    :cond_7
    const-string v8, "DataUsage"

    const-string v9, "detach over"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 446
    .end local v3           #simId:I
    .end local v6           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .restart local v6       #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    goto/16 :goto_1

    .line 472
    .end local v1           #apnTypeList:Ljava/lang/String;
    .end local v6           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    .end local v7           #str:Ljava/lang/String;
    :cond_9
    const-string v8, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 473
    const-string v8, "DataUsage"

    const-string v9, "Receive TelephonyIntents : ACTION_SIM_INFO_UPDATE"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v9}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/TabHost;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->access$102(Lcom/android/settings_ex/DataUsageSummary;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updateGeminiSimStatus()V
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageSummary;->access$300(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 477
    const-string v8, "sim1"

    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-boolean v8, v8, Lcom/android/settings_ex/DataUsageSummary;->mHaveSim1Tab:Z

    if-eqz v8, :cond_b

    :cond_a
    const-string v8, "sim2"

    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-boolean v8, v8, Lcom/android/settings_ex/DataUsageSummary;->mHaveSim2Tab:Z

    if-nez v8, :cond_c

    .line 479
    :cond_b
    const-string v8, "DataUsage"

    const-string v9, "set mSavedCurrentTab null"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v9, 0x0

    #setter for: Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/settings_ex/DataUsageSummary;->access$102(Lcom/android/settings_ex/DataUsageSummary;Ljava/lang/String;)Ljava/lang/String;

    .line 495
    :cond_c
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageSummary;->access$1500(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 496
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary$4;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updateBody()V
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageSummary;->access$400(Lcom/android/settings_ex/DataUsageSummary;)V

    goto/16 :goto_0
.end method
