.class Lcom/android/settings_ex/deviceinfo/Memory$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field private mRemaining:I

.field private final mTarget:Lcom/android/settings_ex/deviceinfo/Memory;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/deviceinfo/Memory;I)V
    .locals 0
    .parameter "target"
    .parameter "remaining"

    .prologue
    .line 836
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 837
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory$ClearCacheObserver;->mTarget:Lcom/android/settings_ex/deviceinfo/Memory;

    .line 838
    iput p2, p0, Lcom/android/settings_ex/deviceinfo/Memory$ClearCacheObserver;->mRemaining:I

    .line 839
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "succeeded"

    .prologue
    .line 843
    monitor-enter p0

    .line 844
    :try_start_0
    iget v0, p0, Lcom/android/settings_ex/deviceinfo/Memory$ClearCacheObserver;->mRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/Memory$ClearCacheObserver;->mRemaining:I

    if-nez v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory$ClearCacheObserver;->mTarget:Lcom/android/settings_ex/deviceinfo/Memory;

    #calls: Lcom/android/settings_ex/deviceinfo/Memory;->onCacheCleared()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/Memory;->access$1600(Lcom/android/settings_ex/deviceinfo/Memory;)V

    .line 847
    :cond_0
    monitor-exit p0

    .line 848
    return-void

    .line 847
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
