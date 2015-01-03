.class public Lcom/mediatek/gemini/GeminiSIMTetherInfo;
.super Landroid/app/Activity;
.source "GeminiSIMTetherInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;,
        Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;
    }
.end annotation


# static fields
.field private static final DIALOG_WAITING:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "GeminiSIMTetherInfo"

.field private static sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;


# instance fields
.field private mActionBarTextView:Landroid/widget/TextView;

.field private mAdpaterData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gemini/GeminiSIMTetherItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAsyncTask:Landroid/os/AsyncTask;

.field private mContactObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mCurrSimId:Ljava/lang/String;

.field private mCurrentSimId:J

.field private mHasRecord:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private volatile mIsRefresh:Z

.field private mIsShowCheckBox:Z

.field private mListView:Landroid/widget/ListView;

.field private mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

.field private volatile mNeedRefresh:Z

.field private mNumSelected:I

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    .line 52
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsRefresh:Z

    .line 53
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNeedRefresh:Z

    .line 54
    iput-object p0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mContext:Landroid/content/Context;

    .line 55
    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    .line 58
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mContactObserver:Landroid/database/ContentObserver;

    .line 80
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$2;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$2;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 395
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsRefresh:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsRefresh:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNeedRefresh:Z

    return v0
.end method

.method static synthetic access$1000()Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/gemini/GeminiSIMTetherAdapter;)Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-object p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNeedRefresh:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mHasRecord:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mHasRecord:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateView(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Landroid/os/AsyncTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->goBackSettings()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mCurrentSimId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreState()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreCheckState()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    return-object v0
.end method

.method private dealWith3AppLaunch()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 521
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 523
    .local v1, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 524
    const/4 v2, -0x1

    .line 535
    .local v2, slotID:I
    :cond_0
    :goto_0
    const-string v4, "GeminiSIMTetherInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dealWith3AppLaunch() slotID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return v2

    .line 525
    .end local v2           #slotID:I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 526
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .restart local v2       #slotID:I
    goto :goto_0

    .line 528
    .end local v2           #slotID:I
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 529
    .restart local v2       #slotID:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    .line 530
    .local v3, temp:Landroid/provider/Telephony$SIMInfo;
    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-le v2, v4, :cond_3

    .line 531
    iget v2, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_1
.end method

.method private disAssContact()V
    .locals 2

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreState()V

    .line 208
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/content/Context;)V

    .line 209
    .local v0, disContactAsyTask:Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    .line 210
    return-void
.end method

.method private goBackSettings()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 183
    return-void
.end method

.method private hideInformation()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 259
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    return-void
.end method

.method private restoreCheckState()V
    .locals 4

    .prologue
    .line 477
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 478
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 479
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setCheckedStatus(I)V

    .line 478
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    :cond_0
    return-void
.end method

.method private restoreState()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 496
    iput v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    .line 497
    iput-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    .line 498
    invoke-direct {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->showActionBar(Z)V

    .line 499
    sget-object v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->setShowCheckBox(Z)V

    .line 500
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 501
    return-void
.end method

.method private setAllCheckBoxState(Z)V
    .locals 5
    .parameter "checked"

    .prologue
    const/4 v4, 0x0

    .line 161
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 162
    .local v0, count:I
    iput v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    .line 163
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 164
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setCheckedStatus(I)V

    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 164
    goto :goto_1

    .line 173
    :cond_2
    iget v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateTitle(I)V

    .line 174
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 175
    return-void
.end method

.method private showActionBar(Z)V
    .locals 9
    .parameter "isShow"

    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 290
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz p1, :cond_0

    .line 293
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 294
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040057

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 296
    .local v1, customActionBarView:Landroid/view/View;
    const v4, 0x7f0800e5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 298
    .local v2, doneMenuItem:Landroid/widget/ImageButton;
    const v4, 0x7f0800e6

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mActionBarTextView:Landroid/widget/TextView;

    .line 300
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mActionBarTextView:Landroid/widget/TextView;

    const v5, 0x7f0b0108

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    new-instance v4, Lcom/mediatek/gemini/GeminiSIMTetherInfo$3;

    invoke-direct {v4, p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$3;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const/16 v4, 0x10

    const/16 v5, 0x1a

    invoke-virtual {v0, v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 314
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 320
    .end local v1           #customActionBarView:Landroid/view/View;
    .end local v2           #doneMenuItem:Landroid/widget/ImageButton;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    return-void

    .line 316
    :cond_0
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0
.end method

.method private updateTitle(I)V
    .locals 5
    .parameter "num"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mActionBarTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0108

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    return-void
.end method

.method private updateView(Z)V
    .locals 5
    .parameter "isRecord"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 264
    const-string v0, "GeminiSIMTetherInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addContacts()V
    .locals 5

    .prologue
    .line 279
    const-string v2, "GeminiSIMTetherInfo"

    const-string v3, "Begin to add contacts now"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v1

    .line 282
    .local v1, isCanceled:Z
    const-string v2, "GeminiSIMTetherInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addContacts()---isCanceled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 284
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 285
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 286
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 324
    const-string v1, "GeminiSIMTetherInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult() requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->hideInformation()V

    .line 327
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 328
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/content/Context;)V

    .line 329
    .local v0, mySync:Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;
    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;

    iput-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    .line 339
    .end local v0           #mySync:Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    if-nez p2, :cond_2

    .line 332
    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mHasRecord:Z

    invoke-direct {p0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateView(Z)V

    goto :goto_0

    .line 334
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 335
    invoke-direct {p0, v4}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateView(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v11, -0x1

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v8, 0x7f04003b

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    .line 107
    invoke-static {p0}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->getInstance(Landroid/content/Context;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    .line 108
    const v8, 0x102000a

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    .line 109
    const v8, 0x7f080085

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mTextView:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "simid"

    invoke-virtual {v8, v9, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 111
    .local v3, simId:J
    iput-wide v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mCurrentSimId:J

    .line 112
    const-string v8, "GeminiSIMTetherInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate(), simid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    cmp-long v8, v3, v11

    if-nez v8, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->dealWith3AppLaunch()I

    move-result v6

    .line 118
    .local v6, slotid:I
    invoke-static {p0, v6}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v7

    .line 120
    .local v7, tempSimInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v7, :cond_0

    .line 121
    iget-wide v3, v7, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 124
    :cond_0
    const-string v8, "GeminiSIMTetherInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "simId == -1 and reget the sim id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v6           #slotid:I
    .end local v7           #tempSimInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-static {p0, v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v5

    .line 127
    .local v5, simInfo:Landroid/provider/Telephony$SIMInfo;
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v1

    .line 128
    .local v1, simCount:I
    const-string v2, ""

    .line 129
    .local v2, simDisplayName:Ljava/lang/String;
    const/4 v8, 0x1

    if-le v1, v8, :cond_2

    if-eqz v5, :cond_2

    .line 130
    iget-object v2, v5, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 132
    :cond_2
    if-eqz v2, :cond_3

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 133
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    :cond_3
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mCurrSimId:Ljava/lang/String;

    .line 136
    iget-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    iget-object v9, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mCurrSimId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->setCurrSIMID(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->hideInformation()V

    .line 138
    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/content/Context;)V

    .line 139
    .local v0, mySync:Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v8}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v8

    check-cast v8, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;

    iput-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    .line 140
    iget-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 141
    iget-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIntentFilter:Landroid/content/IntentFilter;

    .line 143
    iget-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v8, v9}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 242
    packed-switch p1, :pswitch_data_0

    .line 251
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 244
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0608

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 247
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 149
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 150
    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    if-nez v1, :cond_0

    .line 151
    const v1, 0x7f080283

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 152
    const v1, 0x7f080284

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 153
    const v1, 0x7f080285

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 157
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 155
    :cond_0
    const v1, 0x7f080286

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, isCanceled:Z
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v0

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    const-string v1, "GeminiSIMTetherInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy---isCanceled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "arg3"
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
    .line 457
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    if-eqz v3, :cond_0

    .line 458
    const v3, 0x7f080086

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 461
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    .line 463
    .local v2, isChecked:Z
    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 464
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 465
    iget v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    .line 466
    const/4 v1, 0x1

    .line 471
    .local v1, checkBoxNewState:I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    invoke-virtual {v3, v1}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setCheckedStatus(I)V

    .line 472
    iget v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateTitle(I)V

    .line 474
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #checkBoxNewState:I
    .end local v2           #isChecked:Z
    :cond_0
    return-void

    .line 463
    .restart local v0       #checkBox:Landroid/widget/CheckBox;
    .restart local v2       #isChecked:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 468
    :cond_2
    iget v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    .line 469
    const/4 v1, 0x0

    .restart local v1       #checkBoxNewState:I
    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    .line 448
    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->showActionBar(Z)V

    .line 449
    sget-object v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->setShowCheckBox(Z)V

    .line 450
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 505
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    if-eqz v0, :cond_0

    .line 506
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreState()V

    .line 507
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreCheckState()V

    .line 508
    const/4 v0, 0x1

    .line 510
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 187
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 189
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->setAllCheckBoxState(Z)V

    goto :goto_0

    .line 192
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->setAllCheckBoxState(Z)V

    goto :goto_0

    .line 195
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->disAssContact()V

    goto :goto_0

    .line 198
    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->addContacts()V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x7f080283
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 215
    const-string v0, "GeminiSIMTetherInfo"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 218
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 223
    const-string v0, "GeminiSIMTetherInfo"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->GEMINI_TETHER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 227
    return-void
.end method
