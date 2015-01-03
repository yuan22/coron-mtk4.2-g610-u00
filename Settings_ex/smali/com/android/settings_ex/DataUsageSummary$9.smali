.class Lcom/android/settings_ex/DataUsageSummary$9;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 1737
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1740
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1700(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1776
    :goto_0
    return-void

    .line 1742
    :cond_0
    move v1, p2

    .line 1743
    .local v1, dataEnabled:Z
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1800(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1744
    .local v0, currentTab:Ljava/lang/String;
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data enable check change "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    const-string v2, "sim1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1748
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->onDataEnableChangeGemini(ZI)V
    invoke-static {v2, v1, v5}, Lcom/android/settings_ex/DataUsageSummary;->access$1900(Lcom/android/settings_ex/DataUsageSummary;ZI)V

    .line 1775
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v6}, Lcom/android/settings_ex/DataUsageSummary;->access$800(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_0

    .line 1749
    :cond_2
    const-string v2, "sim2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1750
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->onDataEnableChangeGemini(ZI)V
    invoke-static {v2, v1, v6}, Lcom/android/settings_ex/DataUsageSummary;->access$1900(Lcom/android/settings_ex/DataUsageSummary;ZI)V

    goto :goto_1

    .line 1752
    :cond_3
    const-string v2, "mobile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1753
    if-eqz v1, :cond_5

    .line 1755
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->getSimIndicatorState(I)I
    invoke-static {v2, v5}, Lcom/android/settings_ex/DataUsageSummary;->access$2000(Lcom/android/settings_ex/DataUsageSummary;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1756
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$2100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v2

    const/16 v3, 0x12e

    invoke-virtual {v2, v5, v3}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 1757
    const-string v2, "DataUsage"

    const-string v3, "Data enable check change request pin single card"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1400(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 1761
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v2, v6}, Lcom/android/settings_ex/DataUsageSummary;->access$2200(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 1762
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->isNeedtoShowRoamingMsg()Z
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$2300(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1763
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$2400()Lcom/android/settings_ex/ext/ISimRoamingExt;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings_ex/ext/ISimRoamingExt;->showDialog(Landroid/content/Context;)V

    goto :goto_1

    .line 1769
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$9;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_1
.end method
