.class public Lcom/android/settings_ex/applications/ManageApplications$TabInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
.end annotation


# static fields
.field private static final PROP_SD_EXTERNAL_PATH:Ljava/lang/String; = "external_sd_path"


# instance fields
.field private mAppStorage:J

.field public mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

.field public final mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

.field public final mClickListener:Lcom/android/settings_ex/applications/AppClickListener;

.field private mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

.field public final mComputingSizeStr:Ljava/lang/CharSequence;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field public final mFilter:I

.field private mFreeStorage:J

.field private mFreeStorageText:Landroid/widget/TextView;

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mInvalidSizeStr:Ljava/lang/CharSequence;

.field public final mLabel:Ljava/lang/CharSequence;

.field private mLastAppStorage:J

.field private mLastFreeStorage:J

.field private mLastUsedStorage:J

.field private mListContainer:Landroid/view/View;

.field public final mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field public final mOwner:Lcom/android/settings_ex/applications/ManageApplications;

.field public mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

.field private final mSavedInstanceState:Landroid/os/Bundle;

.field private mStorageChartLabel:Landroid/widget/TextView;

.field private mTotalStorage:J

.field private mUsedStorageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ex/applications/AppClickListener;Landroid/os/Bundle;)V
    .locals 2
    .parameter "owner"
    .parameter "apps"
    .parameter "label"
    .parameter "listType"
    .parameter "clickListener"
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v0, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-wide v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    iput-wide v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 219
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo$1;-><init>(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 228
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    .line 229
    iput-object p2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    .line 230
    iput-object p3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 231
    iput p4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListType:I

    .line 232
    packed-switch p4, :pswitch_data_0

    .line 235
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    .line 237
    :goto_0
    iput-object p5, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/settings_ex/applications/AppClickListener;

    .line 238
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0698

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 239
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0697

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 240
    iput-object p6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    .line 241
    return-void

    .line 233
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 234
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Lcom/android/settings_ex/applications/RunningProcessesView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method applyCurrentStorage()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-wide/16 v7, -0x1

    .line 393
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-wide v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 397
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    iget-wide v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    iget-wide v5, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    iget-wide v5, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    long-to-float v5, v5

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    long-to-float v6, v6

    iget-wide v7, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/settings_ex/applications/LinearColorBar;->setRatios(FFF)V

    .line 399
    iget-wide v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    iget-wide v5, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    sub-long v1, v3, v5

    .line 400
    .local v1, usedStorage:J
    iget-wide v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_2

    .line 401
    iput-wide v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    .line 402
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, sizeStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b06ba

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    .end local v0           #sizeStr:Ljava/lang/String;
    :cond_2
    iget-wide v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    iget-wide v5, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 408
    iget-wide v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    .line 409
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 411
    .restart local v0       #sizeStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b06b9

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 415
    .end local v0           #sizeStr:Ljava/lang/String;
    .end local v1           #usedStorage:J
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    invoke-virtual {v3, v9, v9, v9}, Lcom/android/settings_ex/applications/LinearColorBar;->setRatios(FFF)V

    .line 416
    iget-wide v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_4

    .line 417
    iput-wide v7, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    .line 418
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    :cond_4
    iget-wide v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 421
    iput-wide v7, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    .line 422
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "contentParent"
    .parameter "contentChild"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 249
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 294
    :goto_0
    return-object v2

    .line 253
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    .line 254
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, v4, :cond_4

    const v2, 0x7f04004b

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 257
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0800c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    .line 258
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0800c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    .line 260
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 262
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 263
    .local v0, emptyView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 264
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 267
    :cond_1
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    invoke-virtual {v1, v4}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 269
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 270
    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 271
    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    .line 272
    new-instance v2, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    invoke-direct {v2, v3, p0, v4}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings_ex/applications/ApplicationsState;Lcom/android/settings_ex/applications/ManageApplications$TabInfo;I)V

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    .line 273
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 274
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 275
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0800c3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/LinearColorBar;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    .line 276
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0800c5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    .line 277
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0800c4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    .line 278
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0800c6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    .line 279
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-static {p2, p3, v2, v5}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 280
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 281
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings_ex/applications/ManageApplications;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    .line 288
    .end local v0           #emptyView:Landroid/view/View;
    .end local v1           #lv:Landroid/widget/ListView;
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0800ce

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningProcessesView;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    .line 290
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    if-eqz v2, :cond_3

    .line 291
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V

    .line 294
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    goto/16 :goto_0

    .line 254
    :cond_4
    const v2, 0x7f040048

    goto/16 :goto_1

    .line 283
    .restart local v0       #emptyView:Landroid/view/View;
    .restart local v1       #lv:Landroid/widget/ListView;
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0681

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public detachView()V
    .locals 2

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 300
    .local v0, group:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 301
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 304
    .end local v0           #group:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method handleRunningProcessesAvail()V
    .locals 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 435
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 437
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 439
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
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
    .line 429
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/settings_ex/applications/AppClickListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/settings_ex/applications/AppClickListener;->onItemClick(Lcom/android/settings_ex/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 430
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->doPause()V

    .line 328
    :cond_1
    return-void
.end method

.method public resume(I)V
    .locals 5
    .parameter "sortOrder"

    .prologue
    const/4 v4, 0x0

    .line 307
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 312
    .local v0, haveData:Z
    if-eqz v0, :cond_2

    .line 313
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settings_ex/applications/RunningProcessesView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 319
    .end local v0           #haveData:Z
    :cond_1
    :goto_0
    return-void

    .line 316
    .restart local v0       #haveData:Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContainerService(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .parameter "containerService"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 245
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 246
    return-void
.end method

.method updateStorageUsage()V
    .locals 12

    .prologue
    const-wide/16 v7, 0x0

    .line 332
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_0

    .line 336
    iput-wide v7, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    .line 337
    iput-wide v7, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 338
    iput-wide v7, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 340
    iget v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFilter:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 341
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v6, :cond_2

    .line 344
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    const-string v7, "external_sd_path"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v5

    .line 347
    .local v5, stats:[J
    const/4 v6, 0x0

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 348
    const/4 v6, 0x1

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v5           #stats:[J
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_7

    .line 355
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    .line 356
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v0, :cond_7

    .line 357
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6, v4}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 358
    .local v1, ae:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iget-wide v10, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v8, v10

    iget-wide v10, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 356
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 349
    .end local v0           #N:I
    .end local v1           #ae:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v4           #i:I
    :catch_0
    move-exception v2

    .line 350
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "ManageApplications"

    const-string v7, "Problem in container service"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 363
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v6, :cond_4

    .line 365
    :try_start_1
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v5

    .line 367
    .restart local v5       #stats:[J
    const/4 v6, 0x0

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 368
    const/4 v6, 0x1

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    .end local v5           #stats:[J
    :cond_4
    :goto_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    .line 375
    .local v3, emulatedStorage:Z
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_6

    .line 376
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    .line 377
    .restart local v0       #N:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    if-ge v4, v0, :cond_6

    .line 378
    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6, v4}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 379
    .restart local v1       #ae:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->codeSize:J

    iget-wide v10, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->dataSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 380
    if-eqz v3, :cond_5

    .line 381
    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iget-wide v10, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mAppStorage:J

    .line 377
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 369
    .end local v0           #N:I
    .end local v1           #ae:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v3           #emulatedStorage:Z
    .end local v4           #i:I
    :catch_1
    move-exception v2

    .line 370
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v6, "ManageApplications"

    const-string v7, "Problem in container service"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 385
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #emulatedStorage:Z
    :cond_6
    iget-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iget-object v8, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v8}, Lcom/android/settings_ex/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->mFreeStorage:J

    .line 388
    .end local v3           #emulatedStorage:Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    goto/16 :goto_0
.end method
