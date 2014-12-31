.class Lcom/android/internal/telephony/cat/CommandParamsFactory;
.super Landroid/os/Handler;
.source "CommandParamsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CommandParamsFactory$1;
    }
.end annotation


# static fields
.field static final DTTZ_SETTING:I = 0x3

.field static final LANGUAGE_SETTING:I = 0x4

.field static final LOAD_MULTI_ICONS:I = 0x2

.field static final LOAD_NO_ICON:I = 0x0

.field static final LOAD_SINGLE_ICON:I = 0x1

.field static final MSG_ID_LOAD_ICON_DONE:I = 0x1

.field static final REFRESH_NAA_INIT:I = 0x3

.field static final REFRESH_NAA_INIT_AND_FILE_CHANGE:I = 0x2

.field static final REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE:I = 0x0

.field static final REFRESH_UICC_RESET:I = 0x4

.field private static sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;


# instance fields
.field private loadOptionalIcon:Z

.field private mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

.field private mContext:Landroid/content/Context;

.field private mIconLoadState:I

.field private mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

.field tlvIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 78
    iput v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 79
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    .line 105
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->loadOptionalIcon:Z

    .line 144
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 145
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 146
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;Landroid/content/Context;)V
    .locals 2
    .parameter "caller"
    .parameter "fh"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 78
    iput v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 79
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    .line 105
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->loadOptionalIcon:Z

    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 137
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 138
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mContext:Landroid/content/Context;

    .line 139
    return-void
.end method

.method private getAddrIndex(Ljava/util/List;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1647
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1649
    .local v0, addrIndex:I
    const/4 v2, 0x0

    .line 1650
    .local v2, temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1651
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1652
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1653
    .restart local v2       #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1659
    .end local v0           #addrIndex:I
    :goto_1
    return v0

    .line 1656
    .restart local v0       #addrIndex:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1659
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getCallingAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 5
    .parameter
    .parameter "addrIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 1746
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1748
    .local v0, alphaIndex:I
    const/4 v2, 0x0

    .line 1749
    .local v2, temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1750
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1751
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1752
    .restart local v2       #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    if-le v0, p2, :cond_0

    move-object v3, v2

    .line 1759
    :goto_1
    return-object v3

    .line 1756
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1759
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getCallingAlphaIdIndex(Ljava/util/List;I)I
    .locals 5
    .parameter
    .parameter "addrIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1696
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1698
    .local v0, alphaIndex:I
    const/4 v2, 0x0

    .line 1699
    .local v2, temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1700
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1701
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1702
    .restart local v2       #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    if-le v0, p2, :cond_0

    .line 1709
    .end local v0           #alphaIndex:I
    :goto_1
    return v0

    .line 1706
    .restart local v0       #alphaIndex:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1709
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getCallingIconId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 6
    .parameter
    .parameter "alpha2Index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v3, 0x0

    .line 1803
    const/4 v4, -0x1

    if-ne v4, p2, :cond_1

    move-object v2, v3

    .line 1820
    :cond_0
    :goto_0
    return-object v2

    .line 1807
    :cond_1
    const/4 v0, 0x0

    .line 1809
    .local v0, iconIndex:I
    const/4 v2, 0x0

    .line 1810
    .local v2, temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1811
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1812
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1813
    .restart local v2       #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v4

    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    if-ne v4, v5, :cond_2

    if-gt v0, p2, :cond_0

    .line 1817
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 1820
    goto :goto_0
.end method

.method private getConfirmationAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 5
    .parameter
    .parameter "addrIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 1721
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1723
    .local v0, alphaIndex:I
    const/4 v2, 0x0

    .line 1724
    .local v2, temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1725
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1726
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1727
    .restart local v2       #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    if-ge v0, p2, :cond_0

    move-object v3, v2

    .line 1734
    :goto_1
    return-object v3

    .line 1731
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1734
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getConfirmationAlphaIdIndex(Ljava/util/List;I)I
    .locals 5
    .parameter
    .parameter "addrIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1671
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1673
    .local v0, alphaIndex:I
    const/4 v2, 0x0

    .line 1674
    .local v2, temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1675
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1676
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1677
    .restart local v2       #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_0

    if-ge v0, p2, :cond_0

    .line 1684
    .end local v0           #alphaIndex:I
    :goto_1
    return v0

    .line 1681
    .restart local v0       #alphaIndex:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1684
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getConfirmationIconId(Ljava/util/List;II)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 7
    .parameter
    .parameter "alpha1Index"
    .parameter "alpha2Index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;II)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 1774
    if-ne v6, p2, :cond_1

    move-object v2, v3

    .line 1791
    :cond_0
    :goto_0
    return-object v2

    .line 1778
    :cond_1
    const/4 v0, 0x0

    .line 1780
    .local v0, iconIndex:I
    const/4 v2, 0x0

    .line 1781
    .local v2, temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1782
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1783
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1784
    .restart local v2       #temp:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v4

    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    if-ne v4, v5, :cond_2

    if-eq v6, p3, :cond_0

    if-lt v0, p3, :cond_0

    .line 1788
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 1791
    goto :goto_0
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/CommandParamsFactory;
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    .line 110
    const-class v1, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :goto_0
    monitor-exit v1

    return-object v0

    .line 113
    :cond_0
    if-eqz p1, :cond_1

    .line 114
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;Landroid/content/Context;)Lcom/android/internal/telephony/cat/CommandParamsFactory;
    .locals 2
    .parameter "caller"
    .parameter "fh"
    .parameter "context"

    .prologue
    .line 124
    const-class v1, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    monitor-exit v1

    return-object v0

    .line 128
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 129
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processCloseChannel(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 9
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v5, 0x1

    .line 1438
    const-string v6, "enter: process CloseChannel"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1440
    const/4 v2, 0x0

    .line 1442
    .local v2, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    new-instance v4, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1443
    .local v4, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v3, 0x0

    .line 1445
    .local v3, iconId:Lcom/android/internal/telephony/cat/IconId;
    const/4 v0, 0x0

    .line 1447
    .local v0, channelId:I
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 1448
    if-eqz v2, :cond_0

    .line 1449
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1452
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 1453
    if-eqz v2, :cond_1

    .line 1454
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v3

    .line 1455
    iget-boolean v6, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v6, v4, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1458
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 1459
    if-eqz v2, :cond_2

    .line 1460
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v1, v6, v7

    .line 1461
    .local v1, cidByte:B
    and-int/lit8 v0, v1, 0xf

    .line 1462
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To close channel "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    .end local v1           #cidByte:B
    :cond_2
    new-instance v6, Lcom/android/internal/telephony/cat/CloseChannelParams;

    invoke-direct {v6, p1, v0, v4}, Lcom/android/internal/telephony/cat/CloseChannelParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1467
    if-eqz v3, :cond_3

    .line 1468
    iput v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1469
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v7, v3, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1474
    :goto_0
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/CommandDetails;"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 151
    .local v0, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    if-eqz p1, :cond_0

    .line 153
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 155
    .local v1, ctlvCmdDet:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 157
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    .end local v1           #ctlvCmdDet:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_0
    :goto_0
    return-object v0

    .line 158
    .restart local v1       #ctlvCmdDet:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :catch_0
    move-exception v2

    .line 159
    .local v2, e:Lcom/android/internal/telephony/cat/ResultException;
    const-string v3, "Failed to procees command details"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 454
    const-string v3, "process DisplayText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 457
    .local v2, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 459
    .local v1, iconId:Lcom/android/internal/telephony/cat/IconId;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 461
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 462
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 466
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 467
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3

    .line 470
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_2

    .line 472
    iput-boolean v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 475
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_3

    .line 477
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 478
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 481
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_4

    .line 483
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 487
    :cond_4
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    .line 488
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    move v3, v4

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 490
    new-instance v3, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 492
    if-eqz v1, :cond_7

    .line 493
    iput v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 494
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 498
    :goto_2
    return v4

    :cond_5
    move v3, v5

    .line 487
    goto :goto_0

    :cond_6
    move v3, v5

    .line 488
    goto :goto_1

    :cond_7
    move v4, v5

    .line 498
    goto :goto_2
.end method

.method private processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 889
    const-string v5, "process EventNotify"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 891
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 892
    .local v2, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 894
    .local v1, iconId:Lcom/android/internal/telephony/cat/IconId;
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 896
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 897
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 903
    :goto_0
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 904
    if-eqz v0, :cond_0

    .line 905
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 906
    iget-boolean v5, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 909
    :cond_0
    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 910
    new-instance v5, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v5, p1, v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 912
    if-eqz v1, :cond_2

    .line 914
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->loadOptionalIcon:Z

    .line 916
    iput v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 917
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 921
    :goto_1
    return v3

    .line 900
    :cond_1
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v3, v4

    .line 921
    goto :goto_1
.end method

.method private processGetChannelStatus(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v3, 0x1

    .line 1610
    const-string v4, "enter: process GetChannelStatus"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1612
    const/4 v0, 0x0

    .line 1614
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1615
    .local v2, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 1617
    .local v1, iconId:Lcom/android/internal/telephony/cat/IconId;
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 1618
    if-eqz v0, :cond_0

    .line 1619
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1622
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 1623
    if-eqz v0, :cond_1

    .line 1624
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 1625
    iget-boolean v4, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1628
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/cat/GetChannelStatusParams;

    invoke-direct {v4, p1, v2}, Lcom/android/internal/telephony/cat/GetChannelStatusParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1630
    if-eqz v1, :cond_2

    .line 1631
    iput v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1632
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1637
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 563
    const-string v3, "process GetInkey"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    new-instance v2, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 566
    .local v2, input:Lcom/android/internal/telephony/cat/Input;
    const/4 v1, 0x0

    .line 568
    .local v1, iconId:Lcom/android/internal/telephony/cat/IconId;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 570
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_2

    .line 571
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 576
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_0

    .line 578
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 581
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    .line 586
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 587
    if-eqz v0, :cond_1

    .line 588
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    .line 591
    :cond_1
    iput v4, v2, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 592
    iput v4, v2, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 594
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 595
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 596
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    move v3, v4

    :goto_2
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    .line 597
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    move v3, v4

    :goto_3
    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 598
    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 600
    new-instance v3, Lcom/android/internal/telephony/cat/GetInputParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 602
    if-eqz v1, :cond_7

    .line 603
    iput v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 604
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 608
    :goto_4
    return v4

    .line 573
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3

    :cond_3
    move v3, v5

    .line 594
    goto :goto_0

    :cond_4
    move v3, v5

    .line 595
    goto :goto_1

    :cond_5
    move v3, v5

    .line 596
    goto :goto_2

    :cond_6
    move v3, v5

    .line 597
    goto :goto_3

    :cond_7
    move v4, v5

    .line 608
    goto :goto_4
.end method

.method private processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/16 v9, 0xef

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 625
    const-string v6, "process GetInput"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    new-instance v3, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 628
    .local v3, input:Lcom/android/internal/telephony/cat/Input;
    const/4 v2, 0x0

    .line 630
    .local v2, iconId:Lcom/android/internal/telephony/cat/IconId;
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 632
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_4

    .line 633
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 638
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_5

    .line 641
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 642
    .local v4, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 645
    .local v5, valueIndex:I
    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 648
    iget v6, v3, Lcom/android/internal/telephony/cat/Input;->minLen:I

    if-le v6, v9, :cond_0

    .line 649
    const/16 v6, 0xef

    iput v6, v3, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 653
    :cond_0
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 656
    iget v6, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    if-le v6, v9, :cond_1

    .line 657
    const/16 v6, 0xef

    iput v6, v3, Lcom/android/internal/telephony/cat/Input;->maxLen:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_2

    .line 669
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;

    .line 672
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 673
    if-eqz v0, :cond_3

    .line 674
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v2

    .line 677
    iget-boolean v6, v2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z

    .line 681
    :cond_3
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_6

    move v6, v7

    :goto_0
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 682
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_7

    move v6, v7

    :goto_1
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 683
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_8

    move v6, v7

    :goto_2
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 684
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_9

    move v6, v7

    :goto_3
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->packed:Z

    .line 685
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_a

    move v6, v7

    :goto_4
    iput-boolean v6, v3, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 699
    new-instance v6, Lcom/android/internal/telephony/cat/GetInputParams;

    invoke-direct {v6, p1, v3}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 701
    if-eqz v2, :cond_b

    .line 702
    iput v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 703
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v8, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 707
    :goto_5
    return v7

    .line 635
    .end local v4           #rawValue:[B
    .end local v5           #valueIndex:I
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 660
    :catch_0
    move-exception v1

    .line 661
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 664
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .restart local v4       #rawValue:[B
    .restart local v5       #valueIndex:I
    :cond_6
    move v6, v8

    .line 681
    goto :goto_0

    :cond_7
    move v6, v8

    .line 682
    goto :goto_1

    :cond_8
    move v6, v8

    .line 683
    goto :goto_2

    :cond_9
    move v6, v8

    .line 684
    goto :goto_3

    :cond_a
    move v6, v8

    .line 685
    goto :goto_4

    :cond_b
    move v7, v8

    .line 707
    goto :goto_5
.end method

.method private processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v9, 0x1

    .line 1011
    const-string v10, "process LaunchBrowser"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1013
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1014
    .local v0, confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v3, 0x0

    .line 1015
    .local v3, iconId:Lcom/android/internal/telephony/cat/IconId;
    const/4 v6, 0x0

    .line 1017
    .local v6, url:Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1018
    .local v1, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 1020
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 1021
    .local v5, rawValue:[B
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 1022
    .local v7, valueIndex:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v8

    .line 1023
    .local v8, valueLen:I
    if-lez v8, :cond_3

    .line 1024
    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1035
    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :cond_0
    :goto_0
    sget-object v10, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1036
    if-eqz v1, :cond_1

    .line 1037
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1040
    :cond_1
    sget-object v10, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1041
    if-eqz v1, :cond_2

    .line 1042
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v3

    .line 1043
    iget-boolean v10, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v10, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1048
    :cond_2
    iget v10, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v10, :pswitch_data_0

    .line 1051
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 1061
    .local v4, mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    :goto_1
    new-instance v10, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    invoke-direct {v10, p1, v0, v6, v4}, Lcom/android/internal/telephony/cat/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cat/LaunchBrowserMode;)V

    iput-object v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1063
    if-eqz v3, :cond_4

    .line 1064
    iput v9, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1065
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v11, v3, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1069
    :goto_2
    return v9

    .line 1027
    .end local v4           #mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    .restart local v5       #rawValue:[B
    .restart local v7       #valueIndex:I
    .restart local v8       #valueLen:I
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 1029
    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :catch_0
    move-exception v2

    .line 1030
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v9

    .line 1054
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :pswitch_0
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 1055
    .restart local v4       #mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    goto :goto_1

    .line 1057
    .end local v4           #mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .restart local v4       #mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    goto :goto_1

    .line 1069
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 1048
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processOpenChannel(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 20
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1250
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v2, "enter: process OpenChannel"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1253
    const/16 v17, 0x0

    .line 1254
    .local v17, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v14, 0x0

    .line 1257
    .local v14, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v4, 0x0

    .line 1258
    .local v4, bearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;
    const/4 v5, 0x0

    .line 1259
    .local v5, bufferSize:I
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    const/16 v18, 0x0

    .line 1262
    .local v18, linkMode:I
    :goto_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_9

    const/16 v16, 0x0

    .line 1264
    .local v16, isAutoReconnect:Z
    :goto_1
    const/4 v9, 0x0

    .line 1265
    .local v9, accessPointName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1266
    .local v6, localAddress:Lcom/android/internal/telephony/cat/OtherAddress;
    const/4 v10, 0x0

    .line 1267
    .local v10, userLogin:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1269
    .local v11, userPwd:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1270
    .local v7, transportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;
    const/4 v8, 0x0

    .line 1272
    .local v8, dataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;
    new-instance v12, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v12}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1273
    .local v12, confirmText:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v13, 0x0

    .line 1282
    .local v13, confirmIcon:Lcom/android/internal/telephony/cat/IconId;
    const/4 v15, -0x1

    .line 1284
    .local v15, indexTransportProtocol:I
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1286
    if-eqz v14, :cond_0

    .line 1287
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1290
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1291
    if-eqz v14, :cond_1

    .line 1292
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1293
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v13

    .line 1294
    iget-boolean v2, v13, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v2, v12, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1298
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1299
    if-eqz v14, :cond_a

    .line 1300
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveBearerDesc(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/BearerDesc;

    move-result-object v4

    .line 1301
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "bearerDesc  \nbearer type: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "\nprecedence: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/android/internal/telephony/cat/BearerDesc;->precedence:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "\ndelay: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/android/internal/telephony/cat/BearerDesc;->delay:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "\nreliability: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/android/internal/telephony/cat/BearerDesc;->reliability:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "\npeak: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/android/internal/telephony/cat/BearerDesc;->peak:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "\nmean: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/android/internal/telephony/cat/BearerDesc;->mean:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "\npdp type: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/android/internal/telephony/cat/BearerDesc;->pdpType:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1315
    if-eqz v14, :cond_b

    .line 1316
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveBufferSize(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v5

    .line 1317
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "buffer size: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->NETWORK_ACCESS_NAME:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1325
    if-eqz v14, :cond_2

    .line 1326
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveNetworkAccessName(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    .line 1327
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "access point name: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 1332
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1333
    if-eqz v14, :cond_3

    .line 1334
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v10

    .line 1335
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "user login: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1338
    if-eqz v14, :cond_4

    .line 1339
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v11

    .line 1340
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "user password: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SIM_ME_INTERFACE_TRANSPORT_LEVEL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1345
    if-eqz v14, :cond_5

    .line 1346
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    .line 1347
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CPF-processOpenChannel: indexTransportProtocol = "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTransportProtocol(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/TransportProtocol;

    move-result-object v7

    .line 1350
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CPF-processOpenChannel: transport protocol(type/port): "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v7, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v7, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    :cond_5
    if-eqz v7, :cond_10

    .line 1355
    const-string v2, "[BIP]"

    const-string v3, "CPF-processOpenChannel: transport protocol is existed"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 1357
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->resetTlvIndex()V

    .line 1358
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->OTHER_ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1359
    if-eqz v14, :cond_f

    .line 1360
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    if-ge v2, v15, :cond_d

    .line 1362
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CPF-processOpenChannel: get local address, index is "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/OtherAddress;

    move-result-object v6

    .line 1368
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->OTHER_ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1369
    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    if-le v2, v15, :cond_c

    .line 1370
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CPF-processOpenChannel: get dest address, index is "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/OtherAddress;

    move-result-object v8

    .line 1399
    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 1400
    iget v2, v4, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    .line 1401
    new-instance v2, Lcom/android/internal/telephony/cat/OpenChannelParams;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/cat/OpenChannelParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/BearerDesc;ILcom/android/internal/telephony/cat/OtherAddress;Lcom/android/internal/telephony/cat/TransportProtocol;Lcom/android/internal/telephony/cat/OtherAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/cat/TextMessage;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1409
    :cond_7
    :goto_3
    new-instance v2, Lcom/android/internal/telephony/cat/OpenChannelParams;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/cat/OpenChannelParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/BearerDesc;ILcom/android/internal/telephony/cat/OtherAddress;Lcom/android/internal/telephony/cat/TransportProtocol;Lcom/android/internal/telephony/cat/OtherAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/cat/TextMessage;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1413
    if-eqz v13, :cond_12

    .line 1414
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v3, v13, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1417
    const/4 v2, 0x1

    .line 1420
    :goto_4
    return v2

    .line 1259
    .end local v6           #localAddress:Lcom/android/internal/telephony/cat/OtherAddress;
    .end local v7           #transportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;
    .end local v8           #dataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;
    .end local v9           #accessPointName:Ljava/lang/String;
    .end local v10           #userLogin:Ljava/lang/String;
    .end local v11           #userPwd:Ljava/lang/String;
    .end local v12           #confirmText:Lcom/android/internal/telephony/cat/TextMessage;
    .end local v13           #confirmIcon:Lcom/android/internal/telephony/cat/IconId;
    .end local v15           #indexTransportProtocol:I
    .end local v16           #isAutoReconnect:Z
    .end local v18           #linkMode:I
    :cond_8
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1262
    .restart local v18       #linkMode:I
    :cond_9
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 1309
    .restart local v6       #localAddress:Lcom/android/internal/telephony/cat/OtherAddress;
    .restart local v7       #transportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;
    .restart local v8       #dataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;
    .restart local v9       #accessPointName:Ljava/lang/String;
    .restart local v10       #userLogin:Ljava/lang/String;
    .restart local v11       #userPwd:Ljava/lang/String;
    .restart local v12       #confirmText:Lcom/android/internal/telephony/cat/TextMessage;
    .restart local v13       #confirmIcon:Lcom/android/internal/telephony/cat/IconId;
    .restart local v15       #indexTransportProtocol:I
    .restart local v16       #isAutoReconnect:Z
    :cond_a
    const-string v2, "[BIP]"

    const-string v3, "Need BearerDescription object"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v2

    .line 1319
    :cond_b
    const-string v2, "[BIP]"

    const-string v3, "Need BufferSize object"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v2

    .line 1374
    :cond_c
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CPF-processOpenChannel: missing dest address "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v2

    .line 1379
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    if-le v2, v15, :cond_e

    .line 1380
    const-string v2, "[BIP]"

    const-string v3, "CPF-processOpenChannel: get dest address, but no local address"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/OtherAddress;

    move-result-object v8

    goto/16 :goto_2

    .line 1384
    :cond_e
    const-string v2, "[BIP]"

    const-string v3, "CPF-processOpenChannel: Incorrect index"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1387
    :cond_f
    const-string v2, "[BIP]"

    const-string v3, "CPF-processOpenChannel: No other address object"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1391
    :cond_10
    const-string v2, "[BIP]"

    const-string v3, "CPF-processOpenChannel: No transport protocol object"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->OTHER_ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 1393
    if-eqz v14, :cond_6

    .line 1394
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/OtherAddress;

    move-result-object v6

    goto/16 :goto_2

    .line 1405
    :cond_11
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unsupport bearerType: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1420
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_4
.end method

.method private processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1086
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process PlayTone"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    const/4 v3, 0x0

    .line 1089
    .local v3, tone:Lcom/android/internal/telephony/cat/Tone;
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1090
    .local v2, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v4, 0x0

    .line 1091
    .local v4, duration:Lcom/android/internal/telephony/cat/Duration;
    const/4 v8, 0x0

    .line 1093
    .local v8, iconId:Lcom/android/internal/telephony/cat/IconId;
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 1094
    .local v6, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v6, :cond_0

    .line 1096
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 1098
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v9

    .line 1099
    .local v9, rawValue:[B
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v11

    .line 1100
    .local v11, valueIndex:I
    aget-byte v10, v9, v11

    .line 1101
    .local v10, toneVal:I
    invoke-static {v10}, Lcom/android/internal/telephony/cat/Tone;->fromInt(I)Lcom/android/internal/telephony/cat/Tone;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1109
    .end local v9           #rawValue:[B
    .end local v10           #toneVal:I
    .end local v11           #valueIndex:I
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 1110
    if-eqz v6, :cond_1

    .line 1111
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1114
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 1115
    if-eqz v6, :cond_2

    .line 1116
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v4

    .line 1119
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 1120
    if-eqz v6, :cond_3

    .line 1121
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v8

    .line 1122
    iget-boolean v0, v8, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1125
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    .line 1127
    .local v5, vibrate:Z
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 1128
    new-instance v0, Lcom/android/internal/telephony/cat/PlayToneParams;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/PlayToneParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/Tone;Lcom/android/internal/telephony/cat/Duration;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1130
    if-eqz v8, :cond_5

    .line 1131
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1132
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v1, v8, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1134
    const/4 v0, 0x1

    .line 1136
    :goto_1
    return v0

    .line 1102
    .end local v5           #vibrate:Z
    :catch_0
    move-exception v7

    .line 1103
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    .line 1125
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 1136
    .restart local v5       #vibrate:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 2
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1217
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process ProvideLocalInfo"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1218
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v0, :pswitch_data_0

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PLI["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Command Not Supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1229
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1230
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    .line 1220
    :pswitch_0
    const-string v0, "PLI [DTTZ_SETTING]"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1221
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1232
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1224
    :pswitch_1
    const-string v0, "PLI [LANGUAGE_SETTING]"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1225
    new-instance v0, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    goto :goto_0

    .line 1218
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processReceiveData(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 8
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v4, 0x1

    .line 1492
    const-string v5, "enter: process ReceiveData"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1494
    const/4 v1, 0x0

    .line 1496
    .local v1, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v0, 0x0

    .line 1498
    .local v0, channelDataLength:I
    new-instance v3, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1499
    .local v3, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v2, 0x0

    .line 1501
    .local v2, iconId:Lcom/android/internal/telephony/cat/IconId;
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1502
    if-eqz v1, :cond_0

    .line 1503
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveChannelDataLength(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v0

    .line 1504
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Channel data length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1511
    if-eqz v1, :cond_1

    .line 1512
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1515
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 1516
    if-eqz v1, :cond_2

    .line 1517
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v2

    .line 1518
    iget-boolean v5, v2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v5, v3, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1521
    :cond_2
    new-instance v5, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    invoke-direct {v5, p1, v0, v3}, Lcom/android/internal/telephony/cat/ReceiveDataParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1523
    if-eqz v2, :cond_3

    .line 1524
    iput v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1525
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v6, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1530
    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private processRefresh(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 2
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 721
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v1, "process Refresh"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 724
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 731
    .local v0, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v1, :pswitch_data_0

    .line 743
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 738
    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 740
    new-instance v1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v1, p1, v0}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    goto :goto_0

    .line 731
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 12
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 760
    const-string v8, "process SelectItem"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    new-instance v4, Lcom/android/internal/telephony/cat/Menu;

    invoke-direct {v4}, Lcom/android/internal/telephony/cat/Menu;-><init>()V

    .line 763
    .local v4, menu:Lcom/android/internal/telephony/cat/Menu;
    const/4 v7, 0x0

    .line 764
    .local v7, titleIconId:Lcom/android/internal/telephony/cat/IconId;
    const/4 v2, 0x0

    .line 765
    .local v2, itemsIconId:Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 767
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 769
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 770
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    .line 771
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add AlphaId: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v4, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    :cond_0
    :goto_0
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 776
    if-eqz v0, :cond_2

    .line 777
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;

    move-result-object v1

    .line 778
    .local v1, item:Lcom/android/internal/telephony/cat/Item;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add menu item: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v1, :cond_1

    const-string v8, ""

    :goto_1
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    iget-object v8, v4, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 778
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Item;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 786
    .end local v1           #item:Lcom/android/internal/telephony/cat/Item;
    :cond_2
    iget-object v8, v4, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 787
    const-string v8, "no menu item"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 793
    :cond_3
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->NEXT_ACTION_INDICATOR:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 794
    if-eqz v0, :cond_4

    .line 795
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveNextActionIndicator(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    .line 796
    iget-object v8, v4, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    array-length v8, v8

    iget-object v11, v4, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-eq v8, v11, :cond_4

    .line 797
    const-string v8, "nextActionIndicator.length != number of menu items"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
    const/4 v8, 0x0

    iput-object v8, v4, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    .line 803
    :cond_4
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 804
    if-eqz v0, :cond_5

    .line 807
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iput v8, v4, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    .line 808
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "default item: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v4, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 811
    :cond_5
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 812
    if-eqz v0, :cond_6

    .line 813
    iput v9, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 814
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v7

    .line 815
    iget-boolean v8, v7, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v8, v4, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    .line 818
    :cond_6
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 819
    if-eqz v0, :cond_7

    .line 820
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 821
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;

    move-result-object v2

    .line 822
    iget-boolean v8, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    iput-boolean v8, v4, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    .line 825
    :cond_7
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_a

    move v5, v9

    .line 826
    .local v5, presentTypeSpecified:Z
    :goto_2
    if-eqz v5, :cond_8

    .line 827
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_b

    .line 828
    sget-object v8, Lcom/android/internal/telephony/cat/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v8, v4, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    .line 833
    :cond_8
    :goto_3
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_c

    move v8, v9

    :goto_4
    iput-boolean v8, v4, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    .line 834
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_d

    move v8, v9

    :goto_5
    iput-boolean v8, v4, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 836
    new-instance v11, Lcom/android/internal/telephony/cat/SelectItemParams;

    if-eqz v7, :cond_e

    move v8, v9

    :goto_6
    invoke-direct {v11, p1, v4, v8}, Lcom/android/internal/telephony/cat/SelectItemParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V

    iput-object v11, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 839
    iget v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    packed-switch v8, :pswitch_data_0

    :goto_7
    move v10, v9

    .line 873
    :cond_9
    :pswitch_0
    return v10

    .end local v5           #presentTypeSpecified:Z
    :cond_a
    move v5, v10

    .line 825
    goto :goto_2

    .line 830
    .restart local v5       #presentTypeSpecified:Z
    :cond_b
    sget-object v8, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v8, v4, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    goto :goto_3

    :cond_c
    move v8, v10

    .line 833
    goto :goto_4

    :cond_d
    move v8, v10

    .line 834
    goto :goto_5

    :cond_e
    move v8, v10

    .line 836
    goto :goto_6

    .line 845
    :pswitch_1
    if-eqz v7, :cond_9

    iget v8, v7, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    if-lez v8, :cond_9

    .line 846
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v10, v7, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    goto :goto_7

    .line 856
    :pswitch_2
    if-eqz v2, :cond_9

    .line 857
    iget-object v6, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    .line 859
    .local v6, recordNumbers:[I
    iget-object v8, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    new-array v6, v8, [I

    .line 860
    if-eqz v7, :cond_f

    .line 861
    iget v8, v7, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    aput v8, v6, v10

    .line 863
    :cond_f
    iget-object v8, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    iget-object v11, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    array-length v11, v11

    invoke-static {v8, v10, v6, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v8, v6, v10}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    goto :goto_7

    .line 839
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processSendData(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v6, 0x1

    .line 1548
    const-string v7, "enter: process SendData"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1550
    const/4 v3, 0x0

    .line 1552
    .local v3, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v0, 0x0

    .line 1554
    .local v0, channelData:[B
    new-instance v5, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1555
    .local v5, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v4, 0x0

    .line 1556
    .local v4, iconId:Lcom/android/internal/telephony/cat/IconId;
    const/4 v1, 0x0

    .line 1558
    .local v1, channelId:I
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 1559
    if-eqz v3, :cond_0

    .line 1560
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveChannelData(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B

    move-result-object v0

    .line 1565
    :cond_0
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 1566
    if-eqz v3, :cond_1

    .line 1567
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1570
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 1571
    if-eqz v3, :cond_2

    .line 1572
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v4

    .line 1573
    iget-boolean v7, v4, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v7, v5, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1576
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 1577
    if-eqz v3, :cond_3

    .line 1578
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v2, v7, v8

    .line 1579
    .local v2, cidByte:B
    and-int/lit8 v1, v2, 0xf

    .line 1580
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "To send data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    .end local v2           #cidByte:B
    :cond_3
    new-instance v7, Lcom/android/internal/telephony/cat/SendDataParams;

    invoke-direct {v7, p1, v0, v1, v5}, Lcom/android/internal/telephony/cat/SendDataParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[BILcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1585
    if-eqz v4, :cond_4

    .line 1586
    iput v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1587
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v8, v4, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1592
    :goto_0
    return v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 949
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v8, "process SetUpEventList"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 953
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 954
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_3

    .line 956
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 957
    .local v5, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 958
    .local v6, valueIndex:I
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v7

    .line 960
    .local v7, valueLen:I
    new-array v2, v7, [B

    .line 961
    .local v2, eventList:[B
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 962
    aget-byte v8, v5, v6

    aput-byte v8, v2, v3

    .line 963
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CPF-processSetUpEventList: eventList["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 965
    aget-byte v8, v5, v6

    const/4 v9, 0x5

    if-ne v8, v9, :cond_1

    .line 966
    const-string v8, "CPF-processSetUpEventList: sent intent with idle = true"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 967
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.IDLE_SCREEN_NEEDED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 968
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "_enable"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 969
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 985
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 986
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 979
    :cond_1
    aget-byte v8, v5, v6

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 980
    const-string v8, "CPF-processSetUpEventList: sent intent for user activity"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 981
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.stk.USER_ACTIVITY.enable"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v8, "state"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 983
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 989
    .end local v2           #eventList:[B
    .end local v3           #index:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #rawValue:[B
    .end local v6           #valueIndex:I
    .end local v7           #valueLen:I
    :catch_0
    move-exception v1

    .line 990
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 988
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v2       #eventList:[B
    .restart local v3       #index:I
    .restart local v5       #rawValue:[B
    .restart local v6       #valueIndex:I
    .restart local v7       #valueLen:I
    :cond_2
    :try_start_1
    new-instance v8, Lcom/android/internal/telephony/cat/SetupEventListParams;

    invoke-direct {v8, p1, v2}, Lcom/android/internal/telephony/cat/SetupEventListParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[B)V

    iput-object v8, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 994
    .end local v2           #eventList:[B
    .end local v3           #index:I
    .end local v5           #rawValue:[B
    .end local v6           #valueIndex:I
    .end local v7           #valueLen:I
    :cond_3
    const/4 v8, 0x0

    return v8
.end method

.method private processSetUpIdleModeText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v3, 0x1

    .line 515
    const-string v4, "process SetUpIdleModeText"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 518
    .local v2, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 520
    .local v1, iconId:Lcom/android/internal/telephony/cat/IconId;
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 522
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 523
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 530
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_1

    .line 532
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 533
    iget-boolean v4, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v4, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 538
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v4, p1, v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 540
    if-eqz v1, :cond_2

    .line 541
    iput v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 542
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 546
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 12
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1152
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v10, "process SetupCall"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1154
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1155
    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v7, 0x0

    .line 1157
    .local v7, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    new-instance v6, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1159
    .local v6, confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;
    new-instance v4, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1160
    .local v4, callMsg:Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v5, 0x0

    .line 1161
    .local v5, confirmIconId:Lcom/android/internal/telephony/cat/IconId;
    const/4 v3, 0x0

    .line 1167
    .local v3, callIconId:Lcom/android/internal/telephony/cat/IconId;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getAddrIndex(Ljava/util/List;)I

    move-result v0

    .line 1168
    .local v0, addrIndex:I
    const/4 v10, -0x1

    if-ne v10, v0, :cond_0

    .line 1169
    const-string v10, "fail to get ADDRESS data object"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1170
    const/4 v10, 0x0

    .line 1212
    :goto_0
    return v10

    .line 1173
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getConfirmationAlphaIdIndex(Ljava/util/List;I)I

    move-result v1

    .line 1174
    .local v1, alpha1Index:I
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getCallingAlphaIdIndex(Ljava/util/List;I)I

    move-result v2

    .line 1176
    .local v2, alpha2Index:I
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getConfirmationAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1177
    if-eqz v7, :cond_1

    .line 1178
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1181
    :cond_1
    invoke-direct {p0, p2, v1, v2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getConfirmationIconId(Ljava/util/List;II)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1182
    if-eqz v7, :cond_2

    .line 1183
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v5

    .line 1184
    iget-boolean v10, v5, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v10, v6, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1187
    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getCallingAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1188
    if-eqz v7, :cond_3

    .line 1189
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1192
    :cond_3
    invoke-direct {p0, p2, v2}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->getCallingIconId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 1193
    if-eqz v7, :cond_4

    .line 1194
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v3

    .line 1195
    iget-boolean v10, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v10, v4, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1198
    :cond_4
    new-instance v10, Lcom/android/internal/telephony/cat/CallSetupParams;

    invoke-direct {v10, p1, v6, v4}, Lcom/android/internal/telephony/cat/CallSetupParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1200
    if-nez v5, :cond_5

    if-eqz v3, :cond_8

    .line 1201
    :cond_5
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 1202
    const/4 v10, 0x2

    new-array v9, v10, [I

    .line 1203
    .local v9, recordNumbers:[I
    const/4 v11, 0x0

    if-eqz v5, :cond_6

    iget v10, v5, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    :goto_1
    aput v10, v9, v11

    .line 1205
    const/4 v11, 0x1

    if-eqz v3, :cond_7

    iget v10, v3, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    :goto_2
    aput v10, v9, v11

    .line 1208
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    .line 1210
    const/4 v10, 0x1

    goto :goto_0

    .line 1203
    :cond_6
    const/4 v10, -0x1

    goto :goto_1

    .line 1205
    :cond_7
    const/4 v10, -0x1

    goto :goto_2

    .line 1212
    .end local v9           #recordNumbers:[I
    :cond_8
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private resetTlvIndex()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    .line 384
    return-void
.end method

.method private searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 3
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 370
    .local p2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 371
    .local v1, tagValue:I
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 373
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 377
    .end local v0           #ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 4
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .local p2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v2, 0x0

    .line 401
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 402
    :cond_0
    const-string v3, "CPF-searchForNextTagAndIndex: Invalid params"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    .line 417
    :goto_0
    return-object v0

    .line 406
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 408
    .local v1, tagValue:I
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 409
    iget v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->tlvIndex:I

    .line 410
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 411
    .local v0, ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_0

    .end local v0           #ctlv:Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_3
    move-object v0, v2

    .line 417
    goto :goto_0
.end method

.method private searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 2
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 353
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 354
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private searchForTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 2
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 432
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->resetTlvIndex()V

    .line 433
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 434
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 2
    .parameter "resCode"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 341
    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;
    .locals 8
    .parameter "data"

    .prologue
    .line 308
    const/4 v4, 0x0

    .line 309
    .local v4, icons:[Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 311
    .local v3, iconIndex:I
    if-nez p1, :cond_1

    .line 313
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HW]setIcons loadOptionalIcon ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->loadOptionalIcon:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->loadOptionalIcon:Z

    if-eqz v6, :cond_0

    .line 316
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->loadOptionalIcon:Z

    .line 317
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/internal/telephony/cat/CommandParams;->loadOptionalIconFailed:Z

    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HW]mCmdParams.loadOptionalIconFailed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    iget-boolean v7, v7, Lcom/android/internal/telephony/cat/CommandParams;->loadOptionalIconFailed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    .line 336
    .end local p1
    :goto_0
    return-object v6

    .line 322
    .restart local p1
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_0

    .line 324
    :cond_1
    iget v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    packed-switch v6, :pswitch_data_0

    .line 336
    .end local p1
    :cond_2
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_0

    .line 326
    .restart local p1
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    goto :goto_1

    .line 329
    .restart local p1
    :pswitch_1
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    move-object v4, p1

    check-cast v4, [Landroid/graphics/Bitmap;

    .line 331
    move-object v0, v4

    .local v0, arr$:[Landroid/graphics/Bitmap;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v5, :cond_2

    aget-object v2, v0, v1

    .line 332
    .local v2, icon:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 300
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 305
    :goto_0
    return-void

    .line 302
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method make(Lcom/android/internal/telephony/cat/BerTlv;)V
    .locals 7
    .parameter "berTlv"

    .prologue
    .line 167
    if-nez p1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 172
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mIconLoadState:I

    .line 174
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getTag()I

    move-result v5

    const/16 v6, 0xd0

    if-eq v5, v6, :cond_2

    .line 175
    const-string v5, "CPF-make: Ununderstood proactive command tag"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 179
    :cond_2
    const/4 v1, 0x0

    .line 180
    .local v1, cmdPending:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v3

    .line 182
    .local v3, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v0

    .line 183
    .local v0, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    if-nez v0, :cond_3

    .line 184
    const-string v5, "CPF-make: No CommandDetails object"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 191
    :cond_3
    iget v5, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    .line 193
    .local v2, cmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-nez v2, :cond_4

    .line 194
    const-string v5, "CPF-make: Command type can\'t be found"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 200
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 205
    :cond_4
    :try_start_0
    sget-object v5, Lcom/android/internal/telephony/cat/CommandParamsFactory$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 281
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 282
    const-string v5, "CPF-make: default case"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v4

    .line 288
    .local v4, e:Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "throw ResultException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 290
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_0

    .line 207
    .end local v4           #e:Lcom/android/internal/telephony/cat/ResultException;
    :pswitch_0
    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 293
    :goto_1
    if-nez v1, :cond_0

    .line 294
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_0

    .line 210
    :pswitch_1
    :try_start_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 211
    goto :goto_1

    .line 213
    :pswitch_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 214
    goto :goto_1

    .line 216
    :pswitch_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 217
    goto :goto_1

    .line 219
    :pswitch_4
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 220
    goto :goto_1

    .line 222
    :pswitch_5
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 223
    goto :goto_1

    .line 228
    :pswitch_6
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 229
    goto :goto_1

    .line 231
    :pswitch_7
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 232
    goto :goto_1

    .line 234
    :pswitch_8
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processRefresh(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    .line 235
    const/4 v1, 0x0

    .line 236
    goto :goto_1

    .line 238
    :pswitch_9
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 239
    goto :goto_1

    .line 241
    :pswitch_a
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 242
    goto :goto_1

    .line 246
    :pswitch_b
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 247
    goto :goto_1

    .line 254
    :pswitch_c
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processOpenChannel(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 255
    const-string v5, "process OpenChannel"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 258
    :pswitch_d
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processCloseChannel(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 259
    const-string v5, "process CloseChannel"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :pswitch_e
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processSendData(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 263
    const-string v5, "process SendData"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 266
    :pswitch_f
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processReceiveData(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 267
    const-string v5, "process ReceiveData"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 270
    :pswitch_10
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processGetChannelStatus(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 271
    const-string v5, "process GetChannelStatus"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 276
    :pswitch_11
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;->processProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 277
    const-string v5, "process ProvideLocalInformation"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
