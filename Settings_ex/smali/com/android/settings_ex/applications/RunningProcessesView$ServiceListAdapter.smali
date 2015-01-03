.class Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mOrigItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mShowBackground:Z

.field final mState:Lcom/android/settings_ex/applications/RunningState;

.field final synthetic this$0:Lcom/android/settings_ex/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/RunningProcessesView;Lcom/android/settings_ex/applications/RunningState;)V
    .locals 2
    .parameter
    .parameter "state"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 228
    iput-object p2, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 232
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    .line 321
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v4, v3, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 322
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 326
    monitor-exit v4

    .line 333
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 329
    .local v2, vh:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 330
    .local v1, item:Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v5, v5, Lcom/android/settings_ex/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v1, v5}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    .line 331
    .local v0, ai:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/settings_ex/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    monitor-exit v4

    goto :goto_0

    .end local v0           #ai:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    .end local v1           #item:Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v2           #vh:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method getShowBackground()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 305
    if-nez p2, :cond_0

    .line 306
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 310
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    .line 311
    return-object v0

    .line 308
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 300
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mIsProcess:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040086

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 316
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 317
    return-object v0
.end method

.method refreshItems()V
    .locals 3

    .prologue
    .line 252
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 255
    .local v0, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_0

    .line 256
    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    .line 257
    if-nez v0, :cond_2

    .line 258
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 267
    :cond_0
    :goto_1
    return-void

    .line 252
    .end local v0           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 260
    .restart local v0       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 261
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 262
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v2, v2, Lcom/android/settings_ex/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method setShowBackground(Z)V
    .locals 2
    .parameter "showBackground"

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, p1, :cond_0

    .line 236
    iput-boolean p1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    #setter for: Lcom/android/settings_ex/applications/RunningProcessesView;->mIsBackgroundProcess:Z
    invoke-static {v0, p1}, Lcom/android/settings_ex/applications/RunningProcessesView;->access$002(Lcom/android/settings_ex/applications/RunningProcessesView;Z)Z

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/applications/RunningState;->setWatchingBackgroundItems(Z)V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 242
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    iget-boolean v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/LinearColorBar;->setShowingGreen(Z)V

    .line 245
    :cond_0
    return-void
.end method
