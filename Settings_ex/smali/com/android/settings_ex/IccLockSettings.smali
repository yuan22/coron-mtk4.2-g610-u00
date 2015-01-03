.class public Lcom/android/settings_ex/IccLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;


# static fields
.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialogError"

.field private static final DIALOG_PIN:Ljava/lang/String; = "dialogPin"

.field private static final DIALOG_STATE:Ljava/lang/String; = "dialogState"

.field private static final ENABLE_TO_STATE:Ljava/lang/String; = "enableState"

.field private static final GET_SIM_RETRY_EMPTY:I = -0x64

.field private static final ICC_LOCK_MODE:I = 0x1

.field private static final ICC_NEW_MODE:I = 0x3

.field private static final ICC_OLD_MODE:I = 0x2

.field private static final ICC_REENTER_MODE:I = 0x4

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final MSG_CHANGE_ICC_PIN_COMPLETE:I = 0x65

.field private static final MSG_ENABLE_ICC_PIN_COMPLETE:I = 0x64

.field private static final MSG_SIM_STATE_CHANGED:I = 0x66

.field private static final NEW_PINCODE:Ljava/lang/String; = "newPinCode"

.field private static final OFF_MODE:I = 0x0

.field private static final OLD_PINCODE:Ljava/lang/String; = "oldPinCode"

.field private static final PIN_DIALOG:Ljava/lang/String; = "sim_pin"

.field private static final PIN_TOGGLE:Ljava/lang/String; = "sim_toggle"

.field private static final SIM_ID:Ljava/lang/String; = "sim_id"

.field private static final TAG:Ljava/lang/String; = "IccLockSettings"


# instance fields
.field private mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field private mIsDeadLocked:Z

.field private mIsShouldBeFinished:Z

.field private mIsUnlockFollow:Z

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings_ex/EditPinPreference;

.field private mPinToggle:Landroid/preference/CheckBoxPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mServiceComplete:Ljava/lang/Runnable;

.field private mSimId:I

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 86
    iput v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    .line 117
    iput-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mIsUnlockFollow:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mIsShouldBeFinished:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mIsDeadLocked:Z

    .line 122
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$1;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$2;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$3;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mServiceComplete:Ljava/lang/Runnable;

    .line 189
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mServiceComplete:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/IccLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings_ex/IccLockSettings;->iccLockChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/IccLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings_ex/IccLockSettings;->iccPinChanged(Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/IccLockSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/settings_ex/IccLockSettings;->mIsUnlockFollow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->updateOnSimLockStateChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->gobackSettings()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/IccLockSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings_ex/IccLockSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/settings_ex/IccLockSettings;->mIsShouldBeFinished:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private dealWith3AppLaunch()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 676
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 678
    .local v1, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 679
    const/4 v2, -0x1

    .line 690
    .local v2, slotID:I
    :cond_0
    :goto_0
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dealWith3AppLaunch() slotID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return v2

    .line 680
    .end local v2           #slotID:I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 681
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .restart local v2       #slotID:I
    goto :goto_0

    .line 683
    .end local v2           #slotID:I
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 684
    .restart local v2       #slotID:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    .line 685
    .local v3, temp:Landroid/provider/Telephony$SIMInfo;
    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-le v2, v4, :cond_3

    .line 686
    iget v2, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_1
.end method

.method private getRetryPin()Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x7f0b00c6

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 625
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->getRetryPinCount()I

    move-result v0

    .line 626
    .local v0, mPinRetryCount:I
    packed-switch v0, :pswitch_data_0

    .line 630
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " retry pin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 628
    :pswitch_0
    const-string v1, " "

    goto :goto_0

    .line 626
    :pswitch_data_0
    .packed-switch -0x64
        :pswitch_0
    .end packed-switch
.end method

.method private getRetryPinCount()I
    .locals 3

    .prologue
    const/16 v2, -0x64

    .line 655
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    if-nez v0, :cond_0

    .line 656
    const-string v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 663
    :goto_0
    return v0

    .line 658
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    if-ne v0, v1, :cond_1

    .line 659
    const-string v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 662
    :cond_1
    const-string v0, "IccLockSettings"

    const-string v1, "getRetryPinCount sim id error"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getRetryPukCount()I
    .locals 3

    .prologue
    const/16 v2, -0x64

    .line 639
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    if-nez v0, :cond_0

    .line 640
    const-string v0, "gsm.sim.retry.puk1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 645
    :goto_0
    return v0

    .line 641
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    if-ne v0, v1, :cond_1

    .line 642
    const-string v0, "gsm.sim.retry.puk1.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 644
    :cond_1
    const-string v0, "IccLockSettings"

    const-string v1, "getRetryPukCount sim id error"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private gobackSettings()V
    .locals 2

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 299
    return-void
.end method

.method private iccLockChanged(Z)V
    .locals 2
    .parameter "success"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 549
    if-eqz p1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 557
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    .line 558
    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0539

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 555
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->noRetryPinAvailable()Z

    goto :goto_0
.end method

.method private iccPinChanged(Z)V
    .locals 3
    .parameter "success"

    .prologue
    const/4 v2, 0x0

    .line 573
    if-nez p1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0537

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 578
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->noRetryPinAvailable()Z

    .line 585
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    .line 586
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0538

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private noRetryPinAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 564
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->getRetryPinCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->getRetryPinCount()I

    move-result v2

    const/16 v3, -0x64

    if-ne v2, v3, :cond_1

    .line 565
    :cond_0
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRetryPinCount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->getRetryPinCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 567
    iput-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mIsDeadLocked:Z

    move v0, v1

    .line 570
    :cond_1
    return v0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 608
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 610
    :cond_0
    const/4 v0, 0x0

    .line 612
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 618
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 619
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 620
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->setDialogValues()V

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 622
    return-void
.end method

.method private setDialogValues()V
    .locals 5

    .prologue
    const v4, 0x7f0b0534

    const v3, 0x7f0b00c5

    .line 423
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 424
    const-string v0, ""

    .line 425
    .local v0, message:Ljava/lang/String;
    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 451
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v1, v0}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 456
    return-void

    .line 427
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b052e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b052f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->getRetryPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0530

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 434
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0531

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->getRetryPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 439
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0532

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 444
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0533

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->setDialogValues()V

    .line 419
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 522
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 530
    .local v0, callback:Landroid/os/Message;
    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    if-nez v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 532
    const-string v1, "IccLockSettings"

    const-string v2, "tryChangeIccLockState [SIM 1]"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 545
    :goto_0
    return-void

    .line 535
    :cond_0
    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    if-ne v3, v1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 537
    const-string v1, "IccLockSettings"

    const-string v2, "tryChangeIccLockState [SIM 2]"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 541
    :cond_1
    const-string v1, "IccLockSettings"

    const-string v2, "tryChangeIccLockState sim id error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 589
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 595
    .local v0, callback:Landroid/os/Message;
    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    if-nez v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 597
    const-string v1, "IccLockSettings"

    const-string v2, "tryChangePin [SIM 1]"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :goto_0
    return-void

    .line 598
    :cond_0
    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    if-ne v3, v1, :cond_1

    .line 599
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 600
    const-string v1, "IccLockSettings"

    const-string v2, "tryChangePin [SIM 2]"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 602
    :cond_1
    const-string v1, "IccLockSettings"

    const-string v2, "tryChangePin sim id error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateOnSimLockStateChanged()V
    .locals 3

    .prologue
    .line 304
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOnSimLockStateChanged()+mIsDeadLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/IccLockSettings;->mIsDeadLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->getRetryPinCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/IccLockSettings;->mIsDeadLocked:Z

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "IccLockSettings"

    const-string v1, "Restore state"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/IccLockSettings;->mIsDeadLocked:Z

    .line 310
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    .line 312
    :cond_0
    return-void
.end method

.method private updatePreferences()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->isIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 302
    return-void
.end method


# virtual methods
.method getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 207
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->isIccLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0b052b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, summary:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 207
    .end local v1           #summary:Ljava/lang/String;
    :cond_0
    const v2, 0x7f0b052c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method isIccLockEnabled()Z
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    if-ne v0, v1, :cond_1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    .line 200
    :goto_0
    return v0

    .line 199
    :cond_1
    const-string v0, "IccLockSettings"

    const-string v1, "Sim lock sim id error."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x1

    .line 215
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    const-string v4, "IccLockSettings"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 291
    :goto_0
    return-void

    .line 221
    :cond_0
    const v4, 0x7f050036

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 223
    iget-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v4, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 225
    .local v0, it:Landroid/content/Intent;
    const-string v4, "slotid"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    .line 227
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimId is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget v4, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    if-ne v4, v7, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->dealWith3AppLaunch()I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    .line 234
    :cond_1
    iget v4, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    invoke-static {p0, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 235
    .local v3, simInfo:Landroid/provider/Telephony$SIMInfo;
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v1

    .line 236
    .local v1, simCount:I
    const/4 v2, 0x0

    .line 237
    .local v2, simDisplayName:Ljava/lang/String;
    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    if-eqz v3, :cond_2

    .line 238
    iget-object v2, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 240
    :cond_2
    if-eqz v2, :cond_3

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 241
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    :cond_3
    const-string v4, "sim_pin"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/EditPinPreference;

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    .line 246
    const-string v4, "sim_toggle"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    .line 247
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDialogState is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-eqz p1, :cond_4

    const-string v4, "dialogState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 249
    const-string v4, "dialogState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 250
    const-string v4, "dialogPin"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 251
    const-string v4, "dialogError"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 252
    const-string v4, "enableState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    .line 253
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDialogState is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPin is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mError is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mToState  is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget v4, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v4, :pswitch_data_0

    .line 278
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings_ex/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;)V

    .line 281
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 285
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 289
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 290
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->updatePreferences()V

    goto/16 :goto_0

    .line 260
    :pswitch_0
    const-string v4, "oldPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 261
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOldPin  is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 265
    :pswitch_1
    const-string v4, "oldPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 266
    const-string v4, "newPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 267
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOldPin  is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNewPin   is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 373
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 374
    const-string v0, "IccLockSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 376
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 363
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 364
    const-string v0, "IccLockSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 366
    return-void
.end method

.method public onPinEntered(Lcom/android/settings_ex/EditPinPreference;Z)V
    .locals 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 459
    if-nez p2, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    .line 502
    :goto_0
    return-void

    .line 464
    :cond_0
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0535

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 468
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 471
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 473
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 476
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 477
    iput v3, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 478
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 479
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 480
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 483
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 484
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 485
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 486
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 489
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0536

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 491
    iput v3, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 492
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPin:Ljava/lang/String;

    .line 493
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 495
    :cond_2
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    .line 496
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 505
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 507
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    .line 509
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 510
    iput v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    .line 511
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 516
    :goto_0
    return v0

    .line 512
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 513
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 317
    const-string v1, "IccLockSettings"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsShouldBeFinished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/IccLockSettings;->mIsShouldBeFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mIsShouldBeFinished:Z

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 359
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mIsUnlockFollow:Z

    if-nez v1, :cond_2

    .line 325
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mIsUnlockFollow:Z

    .line 326
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 327
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->getRetryPinCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->getRetryPinCount()I

    move-result v1

    const/16 v2, -0x64

    if-ne v1, v2, :cond_3

    .line 328
    :cond_1
    const-string v1, "IccLockSettings"

    const-string v2, "OnResume: postDelay call - handleCellConn 1"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings_ex/IccLockSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/IccLockSettings$4;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 348
    :cond_2
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_4

    .line 354
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 337
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_3
    const-string v1, "IccLockSettings"

    const-string v2, "OnResume: postDelay call - handleCellConn 2"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings_ex/IccLockSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/IccLockSettings$5;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 357
    .restart local v0       #filter:Landroid/content/IntentFilter;
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 387
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 390
    const-string v0, "sim_id"

    iget v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    iget v0, p0, Lcom/android/settings_ex/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 411
    :goto_0
    return-void

    .line 395
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
