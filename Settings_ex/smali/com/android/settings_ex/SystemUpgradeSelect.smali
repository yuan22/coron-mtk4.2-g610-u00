.class public Lcom/android/settings_ex/SystemUpgradeSelect;
.super Landroid/app/Activity;
.source "SystemUpgradeSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCancel:Landroid/widget/Button;

.field private mDelayTime:J

.field private mHandler:Landroid/os/Handler;

.field private mRunnableTimeOut:Ljava/lang/Runnable;

.field private mUpgrade:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/settings_ex/SystemUpgradeSelect;->mDelayTime:J

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/SystemUpgradeSelect;->mHandler:Landroid/os/Handler;

    .line 19
    new-instance v0, Lcom/android/settings_ex/SystemUpgradeSelect$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SystemUpgradeSelect$1;-><init>(Lcom/android/settings_ex/SystemUpgradeSelect;)V

    iput-object v0, p0, Lcom/android/settings_ex/SystemUpgradeSelect;->mRunnableTimeOut:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SystemUpgradeSelect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/settings_ex/SystemUpgradeSelect;->closeCurrentActivity()V

    return-void
.end method

.method private closeCurrentActivity()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 57
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 37
    iget-object v1, p0, Lcom/android/settings_ex/SystemUpgradeSelect;->mCancel:Landroid/widget/Button;

    if-ne v1, p1, :cond_1

    .line 38
    const-string v1, "SystemUpgradeSelect"

    const-string v2, "cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/SystemUpgradeSelect;->mUpgrade:Landroid/widget/Button;

    if-ne v1, p1, :cond_0

    .line 41
    const-string v1, "SystemUpgradeSelect"

    const-string v2, "btUpgradeConfirm"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/SystemUpgradeFinal;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, intentTemp:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f040093

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 30
    const v0, 0x7f08018e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/SystemUpgradeSelect;->mCancel:Landroid/widget/Button;

    .line 31
    iget-object v0, p0, Lcom/android/settings_ex/SystemUpgradeSelect;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v0, 0x7f08018f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/SystemUpgradeSelect;->mUpgrade:Landroid/widget/Button;

    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/SystemUpgradeSelect;->mUpgrade:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/SystemUpgradeSelect;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/SystemUpgradeSelect;->mRunnableTimeOut:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/settings_ex/SystemUpgradeSelect;->mDelayTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    return-void
.end method
