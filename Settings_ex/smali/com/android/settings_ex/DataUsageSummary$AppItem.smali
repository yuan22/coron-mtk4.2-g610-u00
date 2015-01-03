.class public Lcom/android/settings_ex/DataUsageSummary$AppItem;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings_ex/DataUsageSummary$AppItem;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings_ex/DataUsageSummary$AppItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final key:I

.field public restricted:Z

.field public total:J

.field public uids:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2231
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$AppItem$1;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$AppItem$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "key"

    .prologue
    .line 2200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2197
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 2201
    iput p1, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    .line 2202
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    .line 2204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2197
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 2205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    .line 2206
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 2207
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    .line 2208
    return-void
.end method


# virtual methods
.method public addUid(I)V
    .locals 2
    .parameter "uid"

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2212
    return-void
.end method

.method public compareTo(Lcom/android/settings_ex/DataUsageSummary$AppItem;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 2228
    iget-wide v0, p1, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    iget-wide v2, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2194
    check-cast p1, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/DataUsageSummary$AppItem;->compareTo(Lcom/android/settings_ex/DataUsageSummary$AppItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2223
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 2216
    iget v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2217
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 2218
    iget-wide v0, p0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2219
    return-void
.end method
