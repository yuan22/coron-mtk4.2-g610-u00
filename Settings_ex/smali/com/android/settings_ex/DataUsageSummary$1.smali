.class Lcom/android/settings_ex/DataUsageSummary$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$1;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 368
    const-string v0, "DataUsage"

    const-string v1, "Gprs connection SIM changed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$1;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/DataUsageSummary;->mIsUserEnabled:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$002(Lcom/android/settings_ex/DataUsageSummary;Z)Z

    .line 370
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$1;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$1;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$200(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$102(Lcom/android/settings_ex/DataUsageSummary;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$1;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updateGeminiSimStatus()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$300(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$1;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$400(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 373
    return-void
.end method
