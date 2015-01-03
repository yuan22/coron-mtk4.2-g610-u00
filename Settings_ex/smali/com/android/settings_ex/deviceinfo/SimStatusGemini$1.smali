.class Lcom/android/settings_ex/deviceinfo/SimStatusGemini$1;
.super Ljava/lang/Object;
.source "SimStatusGemini.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/SimStatusGemini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$1;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$1;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    #getter for: Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->access$100(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v0

    .line 107
    .local v0, nRet:I
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$1;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    #getter for: Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->access$100(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$1;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    #getter for: Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->access$100(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    .line 108
    const-string v1, "Gemini_SimStatus"

    const-string v2, "mCell Mgr Result is not OK"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$1;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->access$202(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;Z)Z

    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$1;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/SimStatusGemini$1;->this$0:Lcom/android/settings_ex/deviceinfo/SimStatusGemini;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/SimStatusGemini;->access$302(Lcom/android/settings_ex/deviceinfo/SimStatusGemini;Z)Z

    goto :goto_0
.end method
