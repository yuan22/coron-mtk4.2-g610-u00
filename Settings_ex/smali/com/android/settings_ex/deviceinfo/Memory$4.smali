.class Lcom/android/settings_ex/deviceinfo/Memory$4;
.super Landroid/os/storage/StorageEventListener;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory$4;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 505
    const-string v3, "MemorySettings"

    const-string v4, "onStorageStateChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory$4;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/Memory;->access$700(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory$4;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/Memory;->access$600(Lcom/android/settings_ex/deviceinfo/Memory;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 508
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory$4;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/Memory;->access$700(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory$4;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/Memory;->access$600(Lcom/android/settings_ex/deviceinfo/Memory;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 510
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received storage state changed notification that "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changed state from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v3, "unmounted"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory$4;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mSwapDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/Memory;->access$900(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 514
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory$4;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mSwapDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/Memory;->access$900(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 515
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory$4;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    const/4 v4, 0x0

    #setter for: Lcom/android/settings_ex/deviceinfo/Memory;->mSwapDialog:Landroid/app/Dialog;
    invoke-static {v3, v4}, Lcom/android/settings_ex/deviceinfo/Memory;->access$902(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 518
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory$4;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/Memory;->access$100(Lcom/android/settings_ex/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 519
    .local v0, category:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 520
    .local v2, volume:Landroid/os/storage/StorageVolume;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 521
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onStorageStateChanged()V

    .line 527
    .end local v0           #category:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    :cond_2
    const-string v3, "MemorySettings"

    const-string v4, "dynamicShowInstallLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory$4;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-virtual {v3}, Lcom/android/settings_ex/deviceinfo/Memory;->dynamicShowInstallLocation()V

    .line 530
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory$4;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mIsApkInstallerExist:Z
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/Memory;->access$1000(Lcom/android/settings_ex/deviceinfo/Memory;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 531
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory$4;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-virtual {v3}, Lcom/android/settings_ex/deviceinfo/Memory;->dynamicShowAPKInstaller()V

    .line 533
    :cond_3
    return-void
.end method
