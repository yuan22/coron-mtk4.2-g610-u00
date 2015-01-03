.class public Lcom/android/settings_ex/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;,
        Lcom/android/settings_ex/applications/RunningProcessesView$TimeTicker;,
        Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;,
        Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "RunningProcessesView"


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

.field mAm:Landroid/app/ActivityManager;

.field mBackgroundProcessText:Landroid/widget/TextView;

.field mBuilder:Ljava/lang/StringBuilder;

.field mClose_al_apps:Landroid/widget/Button;

.field private final mClose_all_apps_listener:Landroid/view/View$OnClickListener;

.field mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

.field mCurDialog:Landroid/app/Dialog;

.field mCurSelected:Lcom/android/settings_ex/applications/RunningState$BaseItem;

.field mDataAvail:Ljava/lang/Runnable;

.field mForegroundProcessText:Landroid/widget/TextView;

.field private mIsBackgroundProcess:Z

.field mLastAvailMemory:J

.field mLastBackgroundProcessMemory:J

.field mLastForegroundProcessMemory:J

.field mLastNumBackgroundProcesses:I

.field mLastNumForegroundProcesses:I

.field mLastNumServiceProcesses:I

.field mLastServiceProcessMemory:J

.field mListView:Landroid/widget/ListView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field final mMyUserId:I

.field mOwner:Landroid/app/Fragment;

.field mPm:Landroid/content/pm/PackageManager;

.field mState:Lcom/android/settings_ex/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    .line 464
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 85
    iput v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 86
    iput v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 87
    iput v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 88
    iput-wide v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 89
    iput-wide v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 90
    iput-wide v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 91
    iput-wide v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 100
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 408
    new-instance v0, Lcom/android/settings_ex/applications/RunningProcessesView$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/RunningProcessesView$1;-><init>(Lcom/android/settings_ex/applications/RunningProcessesView;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mClose_all_apps_listener:Landroid/view/View$OnClickListener;

    .line 465
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMyUserId:I

    .line 466
    return-void
.end method

.method private StopAllApplication()V
    .locals 6

    .prologue
    .line 416
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 417
    .local v2, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 418
    .local v1, item:Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget-object v3, v1, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-nez v3, :cond_0

    .line 421
    iget-object v3, v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 422
    iget-object v3, v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v3, v1, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 423
    iget-object v3, v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 425
    :cond_0
    iget-object v3, v1, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v3, :cond_1

    .line 426
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    iget-object v4, v1, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 427
    const-string v3, "RunningProcessesView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item.mPackageInfo.packageName==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 429
    :cond_1
    const-string v3, "RunningProcessesView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item.mPackageInfo = null  process = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    .end local v1           #item:Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_2
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/applications/RunningProcessesView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mIsBackgroundProcess:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/RunningProcessesView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->StopAllApplication()V

    return-void
.end method

.method private startServiceDetailsActivity(Lcom/android/settings_ex/applications/RunningState$MergedItem;)V
    .locals 7
    .parameter "mi"

    .prologue
    const/4 v4, 0x0

    .line 443
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    .line 445
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 446
    .local v2, args:Landroid/os/Bundle;
    iget-object v1, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    if-eqz v1, :cond_0

    .line 447
    const-string v1, "uid"

    iget-object v3, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget v3, v3, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    const-string v1, "process"

    iget-object v3, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_0
    const-string v1, "user_id"

    iget v3, p1, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mUserId:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 451
    const-string v1, "background"

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v3, v3, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 453
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 454
    .local v0, pa:Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings_ex/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b06c3

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 457
    .end local v0           #pa:Landroid/preference/PreferenceActivity;
    .end local v2           #args:Landroid/os/Bundle;
    :cond_1
    return-void
.end method


# virtual methods
.method public doCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 469
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    .line 470
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/applications/RunningState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    .line 471
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 473
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040087

    invoke-virtual {v1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 474
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    .line 476
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mPm:Landroid/content/pm/PackageManager;

    .line 477
    const v3, 0x7f08016e

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mClose_al_apps:Landroid/widget/Button;

    .line 478
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mClose_al_apps:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mClose_all_apps_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mIsBackgroundProcess:Z

    .line 481
    const v3, 0x1020004

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 482
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 483
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 485
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 486
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 487
    new-instance v3, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/settings_ex/applications/RunningProcessesView;Lcom/android/settings_ex/applications/RunningState;)V

    iput-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    .line 488
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 489
    const v3, 0x7f08016f

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/LinearColorBar;

    iput-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    .line 490
    const v3, 0x7f080171

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    .line 491
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings_ex/applications/RunningProcessesView$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/applications/RunningProcessesView$2;-><init>(Lcom/android/settings_ex/applications/RunningProcessesView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    const v3, 0x7f080170

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    .line 498
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings_ex/applications/RunningProcessesView$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/applications/RunningProcessesView$3;-><init>(Lcom/android/settings_ex/applications/RunningProcessesView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 506
    .local v2, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 507
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    .line 508
    return-void
.end method

.method public doPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 511
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->pause()V

    .line 512
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 513
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 514
    return-void
.end method

.method public doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "owner"
    .parameter "dataAvail"

    .prologue
    const/4 v0, 0x1

    .line 518
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->updateCloseButton()V

    .line 520
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 521
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/applications/RunningState;->resume(Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;)V

    .line 522
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/RunningState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->refreshUi(Z)V

    .line 529
    :goto_0
    return v0

    .line 528
    :cond_0
    iput-object p2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 529
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 436
    .local v0, l:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 437
    .local v1, mi:Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurSelected:Lcom/android/settings_ex/applications/RunningState$BaseItem;

    .line 438
    invoke-direct {p0, v1}, Lcom/android/settings_ex/applications/RunningProcessesView;->startServiceDetailsActivity(Lcom/android/settings_ex/applications/RunningState$MergedItem;)V

    .line 439
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->updateCloseButton()V

    .line 550
    packed-switch p1, :pswitch_data_0

    .line 563
    :goto_0
    return-void

    .line 552
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 555
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->refreshUi(Z)V

    .line 556
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 559
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->refreshUi(Z)V

    .line 560
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method refreshUi(Z)V
    .locals 17
    .parameter "dataChanged"

    .prologue
    .line 337
    if-eqz p1, :cond_0

    .line 338
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    check-cast v9, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    move-object v1, v9

    check-cast v1, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    .line 339
    .local v1, adapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;
    invoke-virtual {v1}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 340
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 343
    .end local v1           #adapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v9, :cond_1

    .line 344
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 345
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 350
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 355
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v11

    add-long v2, v9, v11

    .line 358
    .local v2, availMem:J
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-gez v9, :cond_2

    .line 359
    const-wide/16 v2, 0x0

    .line 362
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v10, v9, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 363
    :try_start_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget v11, v11, Lcom/android/settings_ex/applications/RunningState;->mNumBackgroundProcesses:I

    if-ne v9, v11, :cond_3

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v13, v9, Lcom/android/settings_ex/applications/RunningState;->mBackgroundProcessMemory:J

    cmp-long v9, v11, v13

    if-nez v9, :cond_3

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastAvailMemory:J

    cmp-long v9, v11, v2

    if-eqz v9, :cond_4

    .line 366
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget v9, v9, Lcom/android/settings_ex/applications/RunningState;->mNumBackgroundProcesses:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 367
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v11, v9, Lcom/android/settings_ex/applications/RunningState;->mBackgroundProcessMemory:J

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 368
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 372
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastAvailMemory:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x0

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    sub-long v4, v11, v13

    .line 375
    .local v4, freeMem:J
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, sizeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b06b9

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v11

    sub-long/2addr v11, v4

    invoke-static {v9, v11, v12}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 380
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b06ba

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    .end local v4           #freeMem:J
    .end local v6           #sizeStr:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget v11, v11, Lcom/android/settings_ex/applications/RunningState;->mNumForegroundProcesses:I

    if-ne v9, v11, :cond_5

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v13, v9, Lcom/android/settings_ex/applications/RunningState;->mForegroundProcessMemory:J

    cmp-long v9, v11, v13

    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget v11, v11, Lcom/android/settings_ex/applications/RunningState;->mNumServiceProcesses:I

    if-ne v9, v11, :cond_5

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v13, v9, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessMemory:J

    cmp-long v9, v11, v13

    if-eqz v9, :cond_6

    .line 387
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget v9, v9, Lcom/android/settings_ex/applications/RunningState;->mNumForegroundProcesses:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 388
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v11, v9, Lcom/android/settings_ex/applications/RunningState;->mForegroundProcessMemory:J

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 389
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget v9, v9, Lcom/android/settings_ex/applications/RunningState;->mNumServiceProcesses:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 390
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v11, v9, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessMemory:J

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 399
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v11

    long-to-float v7, v11

    .line 400
    .local v7, totalMem:F
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    add-long/2addr v11, v2

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    add-long/2addr v11, v13

    long-to-float v8, v11

    .line 402
    .local v8, totalShownMem:F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    sub-float v11, v7, v8

    div-float/2addr v11, v7

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    long-to-float v12, v12

    div-float/2addr v12, v7

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    long-to-float v13, v13

    div-float/2addr v13, v7

    invoke-virtual {v9, v11, v12, v13}, Lcom/android/settings_ex/applications/LinearColorBar;->setRatios(FFF)V

    .line 405
    monitor-exit v10

    .line 406
    return-void

    .line 405
    .end local v7           #totalMem:F
    .end local v8           #totalShownMem:F
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public updateCloseButton()V
    .locals 3

    .prologue
    .line 566
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 567
    .local v0, num:I
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mIsBackgroundProcess:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 568
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mClose_al_apps:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mClose_al_apps:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 533
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 534
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 535
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 536
    .local v0, ai:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 538
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 541
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 543
    .end local v0           #ai:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    :cond_1
    return-void
.end method
