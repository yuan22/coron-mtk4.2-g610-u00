.class Lcom/android/settings_ex/IccLockSettings$3;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$3;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 175
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$3;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$700(Lcom/android/settings_ex/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v0

    .line 176
    .local v0, nRet:I
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$3;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$700(Lcom/android/settings_ex/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$3;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$700(Lcom/android/settings_ex/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    .line 177
    const-string v1, "IccLockSettings"

    const-string v2, "mCell Mgr Result is not OK"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$3;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #setter for: Lcom/android/settings_ex/IccLockSettings;->mIsShouldBeFinished:Z
    invoke-static {v1, v3}, Lcom/android/settings_ex/IccLockSettings;->access$802(Lcom/android/settings_ex/IccLockSettings;Z)Z

    .line 179
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$3;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 186
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string v1, "IccLockSettings"

    const-string v2, "mServiceComplete + Enable mPinToggle"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$3;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$900(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 185
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$3;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings_ex/IccLockSettings;->mIsUnlockFollow:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/IccLockSettings;->access$1002(Lcom/android/settings_ex/IccLockSettings;Z)Z

    goto :goto_0
.end method
