.class public Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/DataUsageSummary$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChangeItem:Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;

.field private mChangePossible:Z

.field private mChangeVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 2152
    const v0, 0x1090008

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 2146
    iput-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 2147
    iput-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 2153
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2154
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;

    .line 2155
    return-void
.end method

.method private updateChange()V
    .locals 1

    .prologue
    .line 2168
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 2169
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    if-eqz v0, :cond_0

    .line 2170
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 2172
    :cond_0
    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/settings_ex/DataUsageSummary$CycleItem;)I
    .locals 4
    .parameter "target"

    .prologue
    .line 2179
    if-eqz p1, :cond_2

    .line 2180
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 2181
    .local v0, count:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 2182
    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    .line 2183
    .local v2, item:Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    instance-of v3, v2, Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;

    if-eqz v3, :cond_1

    .line 2181
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2185
    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/settings_ex/DataUsageSummary$CycleItem;->compareTo(Lcom/android/settings_ex/DataUsageSummary$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 2190
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #item:Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setChangePossible(Z)V
    .locals 0
    .parameter "possible"

    .prologue
    .line 2158
    iput-boolean p1, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 2159
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 2160
    return-void
.end method

.method public setChangeVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 2163
    iput-boolean p1, p0, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 2164
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 2165
    return-void
.end method