.class Lcom/android/settings_ex/DataUsageSummary$16;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1984
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$16;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateEmptyVisible()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2006
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$16;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$3900(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$16;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$4000(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 2007
    .local v0, isEmpty:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$16;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mEmpty:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$4100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2008
    return-void

    .end local v0           #isEmpty:Z
    :cond_0
    move v0, v1

    .line 2006
    goto :goto_0

    .line 2007
    .restart local v0       #isEmpty:Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1987
    new-instance v0, Lcom/android/settings_ex/net/SummaryForAllUidLoader;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$16;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$16;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$3400(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings_ex/net/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 3
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;",
            "Landroid/net/NetworkStats;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1992
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    const-string v1, "DataUsage"

    const-string v2, "SummaryForAllUidLoader finished"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$16;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$3800(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    .line 1995
    .local v0, restrictedUids:[I
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$16;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$3900(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;[I)V

    .line 1996
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary$16;->updateEmptyVisible()V

    .line 1997
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1984
    check-cast p2, Landroid/net/NetworkStats;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary$16;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2001
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/net/NetworkStats;>;"
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$16;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$3900(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;[I)V

    .line 2002
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary$16;->updateEmptyVisible()V

    .line 2003
    return-void
.end method
