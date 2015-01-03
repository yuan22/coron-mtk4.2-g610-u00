.class public Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public size:Landroid/widget/TextView;

.field public uptime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    .line 171
    const v0, 0x7f080023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f08007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f08007d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f08016d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f080016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    .line 176
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 177
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    .locals 8
    .parameter "state"
    .parameter "item"
    .parameter "builder"

    .prologue
    .line 181
    iget-object v5, p1, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 182
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 183
    .local v3, pm:Landroid/content/pm/PackageManager;
    iget-object v4, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-nez v4, :cond_0

    instance-of v4, p2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eqz v4, :cond_0

    .line 186
    move-object v0, p2

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object v2, v0

    .line 187
    .local v2, mergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_0

    .line 188
    move-object v0, p2

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    invoke-virtual {v4, v3}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 189
    move-object v0, p2

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v4, v4, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v4, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 190
    move-object v0, p2

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v4, v4, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v4, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 193
    .end local v2           #mergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    new-instance v1, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    invoke-direct {v1}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;-><init>()V

    .line 195
    .local v1, ai:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    iput-object v4, v1, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    .line 196
    iput-object p2, v1, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings_ex/applications/RunningState$BaseItem;

    .line 197
    iput-object p0, v1, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .line 198
    iget-wide v6, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mActiveSince:J

    iput-wide v6, v1, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    .line 199
    iget-boolean v4, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v4, :cond_1

    .line 200
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b06b5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 205
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p2, v6, p1}, Lcom/android/settings_ex/applications/RunningState$BaseItem;->loadIcon(Landroid/content/Context;Lcom/android/settings_ex/applications/RunningState;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, p3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 208
    monitor-exit v5

    return-object v1

    .line 202
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    .end local v1           #ai:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
