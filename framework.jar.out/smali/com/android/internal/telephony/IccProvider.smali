.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADDRESS_SUPPORT_AAS:I = 0x8

.field private static final ADDRESS_SUPPORT_SNE:I = 0x9

.field private static final ADN:I = 0x1

.field private static final ADN1:I = 0x65

.field private static final ADN2:I = 0xc9

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final ERROR_ICC_PROVIDER_ADN_LIST_NOT_EXIST:I = -0xb

.field public static final ERROR_ICC_PROVIDER_ANR_TOO_LONG:I = -0x6

.field public static final ERROR_ICC_PROVIDER_EMAIL_FULL:I = -0xc

.field public static final ERROR_ICC_PROVIDER_EMAIL_TOOLONG:I = -0xd

.field public static final ERROR_ICC_PROVIDER_GENERIC_FAILURE:I = -0xa

.field public static final ERROR_ICC_PROVIDER_NOT_READY:I = -0x4

.field public static final ERROR_ICC_PROVIDER_NO_ERROR:I = 0x1

.field public static final ERROR_ICC_PROVIDER_NUMBER_TOO_LONG:I = -0x1

.field public static final ERROR_ICC_PROVIDER_PASSWORD_ERROR:I = -0x5

.field public static final ERROR_ICC_PROVIDER_STORAGE_FULL:I = -0x3

.field public static final ERROR_ICC_PROVIDER_TEXT_TOO_LONG:I = -0x2

.field public static final ERROR_ICC_PROVIDER_UNKNOWN:I = 0x0

.field private static final FDN:I = 0x2

.field private static final FDN1:I = 0x66

.field private static final FDN2:I = 0xca

.field private static final SDN:I = 0x3

.field private static final SDN1:I = 0x67

.field private static final SDN2:I = 0xcb

.field private static final STR_ANR:Ljava/lang/String; = "anr"

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_INDEX:Ljava/lang/String; = "index"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final UPB:I = 0x4

.field private static final UPB1:I = 0x68

.field private static final UPB2:I = 0xcc

.field private static final UPB_GRP_COLUMN_NAMES:[Ljava/lang/String;

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 78
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    .line 81
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "index"

    aput-object v1, v0, v5

    const-string/jumbo v1, "name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "number"

    aput-object v1, v0, v4

    const-string v1, "emails"

    aput-object v1, v0, v6

    const-string v1, "additionalNumber"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "groupIds"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "aas"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "sne"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 94
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "index"

    aput-object v1, v0, v5

    const-string/jumbo v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->UPB_GRP_COLUMN_NAMES:[Ljava/lang/String;

    .line 122
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 127
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "sdn"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "pbr"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn1"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn2"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn1"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn2"

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "sdn1"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "sdn2"

    const/16 v3, 0xcb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "pbr1"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "pbr2"

    const/16 v3, 0xcc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"
    .parameter "simId"

    .prologue
    .line 567
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEf: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 571
    :cond_0
    const/4 v8, 0x0

    .line 579
    .local v8, result:I
    :try_start_0
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 581
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    .line 582
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 590
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 591
    return v8

    .line 585
    :catch_0
    move-exception v7

    .line 586
    .local v7, ex:Landroid/os/RemoteException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 587
    .end local v7           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 588
    .local v7, ex:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addUsimRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 15
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "strAnr"
    .parameter "strEmail"
    .parameter "strGas"
    .parameter "simId"

    .prologue
    .line 599
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUSIMRecordToEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 604
    :cond_0
    const/4 v14, 0x0

    .line 610
    .local v14, result:I
    const/4 v12, 0x0

    .line 611
    .local v12, emails:[Ljava/lang/String;
    if-eqz p5, :cond_1

    const-string v2, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 612
    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    .line 613
    const/4 v2, 0x0

    aput-object p5, v12, v2

    .line 617
    :cond_1
    :try_start_0
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 619
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_2

    .line 620
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    .line 628
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUsimRecordToEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 629
    return v14

    .line 623
    :catch_0
    move-exception v13

    .line 624
    .local v13, ex:Landroid/os/RemoteException;
    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 625
    .end local v13           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v13

    .line 626
    .local v13, ex:Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"
    .parameter "simId"

    .prologue
    .line 751
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEf: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 756
    :cond_0
    const/4 v8, 0x0

    .line 759
    .local v8, result:I
    :try_start_0
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 761
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    .line 762
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 770
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 771
    return v8

    .line 765
    :catch_0
    move-exception v7

    .line 766
    .local v7, ex:Landroid/os/RemoteException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 767
    .end local v7           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 768
    .local v7, ex:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I
    .locals 8
    .parameter "efType"
    .parameter "nIndex"
    .parameter "pin2"
    .parameter "simId"

    .prologue
    .line 776
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 780
    :cond_0
    const/4 v7, 0x0

    .line 783
    .local v7, result:I
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 785
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    .line 786
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 793
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 794
    return v7

    .line 788
    :catch_0
    move-exception v6

    .line 789
    .local v6, ex:Landroid/os/RemoteException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 790
    .end local v6           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 791
    .local v6, ex:Ljava/lang/SecurityException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteUsimRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 15
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "simId"

    .prologue
    .line 799
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    .line 800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUsimRecordFromEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 803
    :cond_0
    const/4 v14, 0x0

    .line 806
    .local v14, result:I
    :try_start_0
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 808
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 809
    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    .line 817
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUsimRecordFromEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 818
    return v14

    .line 812
    :catch_0
    move-exception v13

    .line 813
    .local v13, ex:Landroid/os/RemoteException;
    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 814
    .end local v13           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v13

    .line 815
    .local v13, ex:Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteUsimRecordFromEfByIndex(III)I
    .locals 10
    .parameter "efType"
    .parameter "nIndex"
    .parameter "simId"

    .prologue
    .line 822
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUsimRecordFromEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 825
    :cond_0
    const/4 v9, 0x0

    .line 828
    .local v9, result:I
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 830
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    .line 831
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v7, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    .line 839
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUsimRecordFromEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 840
    return v9

    .line 834
    :catch_0
    move-exception v8

    .line 835
    .local v8, ex:Landroid/os/RemoteException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 836
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 837
    .local v8, ex:Ljava/lang/SecurityException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDefaultSim()I
    .locals 2

    .prologue
    .line 914
    const-string/jumbo v0, "persist.radio.default_sim"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 2
    .parameter "simId"

    .prologue
    .line 903
    if-nez p1, :cond_0

    .line 904
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 910
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    return-object v0

    .line 907
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    const-string/jumbo v1, "simphonebook2"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .restart local v0       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    goto :goto_0
.end method

.method private getRequestSim(I)I
    .locals 3
    .parameter "match"

    .prologue
    .line 988
    sparse-switch p1, :sswitch_data_0

    .line 1006
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 993
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getDefaultSim()I

    move-result v0

    .line 1003
    :goto_0
    return v0

    .line 998
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1003
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 988
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_1
        0xc9 -> :sswitch_2
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
        0xcc -> :sswitch_2
    .end sparse-switch
.end method

.method private getRequestType(I)I
    .locals 3
    .parameter "match"

    .prologue
    .line 965
    sparse-switch p1, :sswitch_data_0

    .line 983
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :sswitch_0
    const/16 v0, 0x6f3a

    .line 981
    :goto_0
    return v0

    .line 973
    :sswitch_1
    const/16 v0, 0x6f3b

    goto :goto_0

    .line 977
    :sswitch_2
    const/16 v0, 0x6f49

    goto :goto_0

    .line 981
    :sswitch_3
    const/16 v0, 0x4f30

    goto :goto_0

    .line 965
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0xc9 -> :sswitch_0
        0xca -> :sswitch_1
        0xcb -> :sswitch_2
        0xcc -> :sswitch_3
    .end sparse-switch
.end method

.method private loadFromEf(II)Landroid/database/MatrixCursor;
    .locals 8
    .parameter "efType"
    .parameter "simId"

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    sget-boolean v6, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v6, :cond_0

    .line 533
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromEf: efType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 536
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .line 538
    .local v4, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_1

    .line 539
    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 546
    .end local v4           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 548
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 549
    .local v5, size:I
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v6, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 550
    .local v1, cursor:Landroid/database/MatrixCursor;
    sget-boolean v6, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v6, :cond_2

    .line 551
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adnRecords.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 553
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 554
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v6, v1, v3}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 553
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 541
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    .end local v3           #i:I
    .end local v5           #size:I
    :catch_0
    move-exception v2

    .line 542
    .local v2, ex:Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 544
    .local v2, ex:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 559
    .end local v2           #ex:Ljava/lang/SecurityException;
    :cond_3
    const-string v6, "IccProvider"

    const-string v7, "Cannot load ADN records"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method private loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 19
    .parameter "record"
    .parameter "cursor"
    .parameter "id"

    .prologue
    .line 852
    sget-object v17, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v13, v0

    .line 853
    .local v13, len:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    .line 854
    new-array v6, v13, [Ljava/lang/Object;

    .line 855
    .local v6, contact:[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    .line 856
    .local v3, alphaTag:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v15

    .line 857
    .local v15, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v9

    .line 858
    .local v9, emails:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v4

    .line 859
    .local v4, anr:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v10

    .line 860
    .local v10, grpIds:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getRecordIndex()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 862
    .local v12, index:Ljava/lang/String;
    const/16 v17, 0x8

    move/from16 v0, v17

    if-lt v13, v0, :cond_0

    .line 863
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAasIndex()I

    move-result v2

    .line 864
    .local v2, aasIndex:I
    const/16 v17, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v6, v17

    .line 866
    .end local v2           #aasIndex:I
    :cond_0
    const/16 v17, 0x9

    move/from16 v0, v17

    if-lt v13, v0, :cond_1

    .line 867
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getSne()Ljava/lang/String;

    move-result-object v16

    .line 868
    .local v16, sne:Ljava/lang/String;
    const/16 v17, 0x8

    aput-object v16, v6, v17

    .line 870
    .end local v16           #sne:Ljava/lang/String;
    :cond_1
    sget-boolean v17, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v17, :cond_2

    .line 871
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "loadRecord: record:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 873
    :cond_2
    const/16 v17, 0x0

    aput-object v12, v6, v17

    .line 874
    const/16 v17, 0x1

    aput-object v3, v6, v17

    .line 875
    const/16 v17, 0x2

    aput-object v15, v6, v17

    .line 877
    if-eqz v9, :cond_5

    .line 878
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 879
    .local v8, emailString:Ljava/lang/StringBuilder;
    move-object v5, v9

    .local v5, arr$:[Ljava/lang/String;
    array-length v14, v5

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v14, :cond_4

    aget-object v7, v5, v11

    .line 880
    .local v7, email:Ljava/lang/String;
    sget-boolean v17, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v17, :cond_3

    .line 881
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Adding email:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 883
    :cond_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 886
    .end local v7           #email:Ljava/lang/String;
    :cond_4
    const/16 v17, 0x3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v17

    .line 888
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #emailString:Ljava/lang/StringBuilder;
    .end local v11           #i$:I
    .end local v14           #len$:I
    :cond_5
    const/16 v17, 0x4

    aput-object v4, v6, v17

    .line 889
    const/16 v17, 0x5

    aput-object v10, v6, v17

    .line 890
    const/16 v17, 0x6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v6, v17

    .line 891
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 893
    .end local v3           #alphaTag:Ljava/lang/String;
    .end local v4           #anr:Ljava/lang/String;
    .end local v6           #contact:[Ljava/lang/Object;
    .end local v9           #emails:[Ljava/lang/String;
    .end local v10           #grpIds:Ljava/lang/String;
    .end local v12           #index:Ljava/lang/String;
    .end local v15           #number:Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 896
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "inVal"

    .prologue
    const/16 v3, 0x27

    .line 329
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 330
    .local v0, len:I
    move-object v1, p1

    .line 332
    .local v1, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 333
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 336
    :cond_0
    return-object v1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"
    .parameter "simId"

    .prologue
    .line 634
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIccRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 639
    :cond_0
    const/4 v9, 0x0

    .line 642
    .local v9, result:I
    :try_start_0
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 644
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    .line 645
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    .line 653
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIccRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 654
    return v9

    .line 648
    :catch_0
    move-exception v8

    .line 649
    .local v8, ex:Landroid/os/RemoteException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 650
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 651
    .local v8, ex:Ljava/lang/SecurityException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter "efType"
    .parameter "nIndex"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"
    .parameter "simId"

    .prologue
    .line 659
    sget-boolean v1, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v1, :cond_0

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newnumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 663
    :cond_0
    const/4 v7, 0x0

    .line 666
    .local v7, result:I
    :try_start_0
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 668
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p2

    move-object v5, p5

    .line 669
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 677
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 678
    return v7

    .line 672
    :catch_0
    move-exception v6

    .line 673
    .local v6, ex:Landroid/os/RemoteException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 674
    .end local v6           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 675
    .local v6, ex:Ljava/lang/SecurityException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimPBRecordsByIndexWithError(ILcom/android/internal/telephony/AdnRecord;II)I
    .locals 5
    .parameter "efType"
    .parameter "newAdn"
    .parameter "index"
    .parameter "simId"

    .prologue
    .line 944
    sget-boolean v3, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v3, :cond_0

    .line 945
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateUsimRecordByIndex simId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",newAdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 947
    :cond_0
    const/4 v2, 0x0

    .line 950
    .local v2, result:I
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 952
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 953
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsByIndexWithError(ILcom/android/internal/telephony/AdnRecord;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 960
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateUsimRecordInEf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 961
    return v2

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 957
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 958
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;I)I
    .locals 5
    .parameter "efType"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "simId"

    .prologue
    .line 921
    sget-boolean v3, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v3, :cond_0

    .line 922
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateUsimRecordBySearch simId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",oldAdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",newAdn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 925
    :cond_0
    const/4 v2, 0x0

    .line 928
    .local v2, result:I
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 930
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_1

    .line 931
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 938
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateUsimRecordInEf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 939
    return v2

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 935
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 936
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 15
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "strAnr"
    .parameter "strEmail"
    .parameter "simId"

    .prologue
    .line 684
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 690
    :cond_0
    const/4 v14, 0x0

    .line 692
    .local v14, result:I
    const/4 v12, 0x0

    .line 693
    .local v12, emails:[Ljava/lang/String;
    if-eqz p7, :cond_1

    .line 694
    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    .line 695
    const/4 v2, 0x0

    aput-object p7, v12, v2

    .line 699
    :cond_1
    :try_start_0
    move/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 701
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_2

    .line 702
    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    .line 711
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 712
    return v14

    .line 706
    :catch_0
    move-exception v13

    .line 707
    .local v13, ex:Landroid/os/RemoteException;
    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 708
    .end local v13           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v13

    .line 709
    .local v13, ex:Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .parameter "efType"
    .parameter "nIndex"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "strAnr"
    .parameter "strEmail"
    .parameter "simId"

    .prologue
    .line 719
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimRecordInEfByIndex: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 724
    :cond_0
    const/4 v10, 0x0

    .line 726
    .local v10, result:I
    const/4 v7, 0x0

    .line 727
    .local v7, emails:[Ljava/lang/String;
    if-eqz p6, :cond_1

    .line 728
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .line 729
    const/4 v2, 0x0

    aput-object p6, v7, v2

    .line 733
    :cond_1
    :try_start_0
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getIccPhbService(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 735
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_2

    .line 736
    const/4 v6, 0x0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move v8, p2

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimPBRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 744
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUsimRecordInEfByIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 745
    return v10

    .line 739
    :catch_0
    move-exception v9

    .line 740
    .local v9, ex:Landroid/os/RemoteException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 741
    .end local v9           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 742
    .local v9, ex:Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 24
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 344
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 347
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 348
    .local v17, match:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->getRequestType(I)I

    move-result v3

    .line 349
    .local v3, efType:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->getRequestSim(I)I

    move-result v7

    .line 350
    .local v7, simId:I
    sparse-switch v17, :sswitch_data_0

    .line 360
    :goto_0
    const-string v4, ""

    .line 361
    .local v4, tag:Ljava/lang/String;
    const-string v5, ""

    .line 362
    .local v5, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 363
    .local v6, emails:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 364
    .local v13, pin2:Ljava/lang/String;
    const/16 v19, -0x1

    .line 366
    .local v19, nIndex:I
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 367
    .local v22, tokens:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v18, v0

    .line 369
    .local v18, n:I
    :cond_1
    :goto_1
    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_8

    .line 370
    aget-object v20, v22, v18

    .line 371
    .local v20, param:Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_2

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parsing \'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\'"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 374
    :cond_2
    const/16 v2, 0x3d

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 375
    .local v15, index:I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_3

    .line 376
    const-string v2, "IccProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resolve: bad whereClause parameter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 354
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v13           #pin2:Ljava/lang/String;
    .end local v15           #index:I
    .end local v18           #n:I
    .end local v19           #nIndex:I
    .end local v20           #param:Ljava/lang/String;
    .end local v22           #tokens:[Ljava/lang/String;
    :sswitch_0
    const/16 v3, 0x6f3a

    .line 355
    goto :goto_0

    .line 380
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v13       #pin2:Ljava/lang/String;
    .restart local v15       #index:I
    .restart local v18       #n:I
    .restart local v19       #nIndex:I
    .restart local v20       #param:Ljava/lang/String;
    .restart local v22       #tokens:[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 381
    .local v16, key:Ljava/lang/String;
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 382
    .local v23, val:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parsing key is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " index of = is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " val is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 392
    const-string v2, "index"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 393
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    goto/16 :goto_1

    .line 394
    :cond_4
    const-string/jumbo v2, "tag"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 395
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 396
    :cond_5
    const-string/jumbo v2, "number"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 398
    :cond_6
    const-string v2, "emails"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 400
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 401
    :cond_7
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 406
    .end local v15           #index:I
    .end local v16           #key:Ljava/lang/String;
    .end local v20           #param:Ljava/lang/String;
    .end local v23           #val:Ljava/lang/String;
    :cond_8
    const/16 v21, 0x0

    .line 407
    .local v21, result:I
    if-lez v19, :cond_b

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete index is "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 409
    const/4 v2, 0x4

    move/from16 v0, v17

    if-eq v2, v0, :cond_9

    const/16 v2, 0x68

    move/from16 v0, v17

    if-eq v2, v0, :cond_9

    const/16 v2, 0xcc

    move/from16 v0, v17

    if-ne v2, v0, :cond_a

    .line 410
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1, v7}, Lcom/android/internal/telephony/IccProvider;->deleteUsimRecordFromEfByIndex(III)I

    move-result v21

    :goto_2
    move/from16 v2, v21

    .line 435
    :goto_3
    return v2

    .line 412
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v1, v13, v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I

    move-result v21

    goto :goto_2

    .line 417
    :cond_b
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_c

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 418
    const/4 v2, -0x5

    goto :goto_3

    .line 421
    :cond_c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 422
    const/4 v2, 0x0

    goto :goto_3

    .line 425
    :cond_d
    const/4 v2, 0x4

    move/from16 v0, v17

    if-eq v2, v0, :cond_e

    const/16 v2, 0x68

    move/from16 v0, v17

    if-eq v2, v0, :cond_e

    const/16 v2, 0xcc

    move/from16 v0, v17

    if-ne v2, v0, :cond_10

    .line 426
    :cond_e
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v8, 0x8

    if-lt v2, v8, :cond_f

    .line 427
    new-instance v2, Lcom/android/internal/telephony/AdnRecord;

    const-string v8, ""

    invoke-direct {v2, v4, v5, v8}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/android/internal/telephony/AdnRecord;

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v8, v7}, Lcom/android/internal/telephony/IccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;I)I

    move-result v21

    :goto_4
    move/from16 v2, v21

    .line 435
    goto :goto_3

    :cond_f
    move-object/from16 v2, p0

    .line 430
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/IccProvider;->deleteUsimRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v21

    goto :goto_4

    :cond_10
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move v14, v7

    .line 433
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v21

    goto :goto_4

    .line 350
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x68 -> :sswitch_0
        0xcc -> :sswitch_0
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 182
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :sswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 182
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0xcb -> :sswitch_0
        0xcc -> :sswitch_0
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 25
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 206
    const/4 v15, 0x0

    .line 209
    .local v15, pin2:Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v2, :cond_0

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insert "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 212
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v20

    .line 213
    .local v20, match:I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->getRequestType(I)I

    move-result v3

    .line 214
    .local v3, efType:I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->getRequestSim(I)I

    move-result v9

    .line 215
    .local v9, simId:I
    sparse-switch v20, :sswitch_data_0

    .line 230
    :goto_0
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, tag:Ljava/lang/String;
    const-string/jumbo v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, number:Ljava/lang/String;
    const/16 v22, 0x0

    .line 233
    .local v22, result:I
    const/4 v2, 0x4

    move/from16 v0, v20

    if-eq v2, v0, :cond_1

    const/16 v2, 0x68

    move/from16 v0, v20

    if-eq v2, v0, :cond_1

    const/16 v2, 0xcc

    move/from16 v0, v20

    if-ne v2, v0, :cond_8

    .line 234
    :cond_1
    const-string v2, "gas"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 235
    .local v8, strGas:Ljava/lang/String;
    const-string v2, "anr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, strAnr:Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 237
    .local v7, strEmail:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v10, 0x8

    if-lt v2, v10, :cond_7

    .line 238
    const-string v2, "aas"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 239
    .local v17, aasIndex:Ljava/lang/Integer;
    if-nez v5, :cond_2

    .line 240
    const-string v5, ""

    .line 242
    :cond_2
    if-nez v4, :cond_3

    .line 243
    const-string v4, ""

    .line 245
    :cond_3
    new-instance v21, Lcom/android/internal/telephony/AdnRecord;

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 246
    .local v21, record:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/AdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 248
    const/16 v19, 0x0

    .line 249
    .local v19, emails:[Ljava/lang/String;
    if-eqz v7, :cond_4

    const-string v2, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 250
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 251
    const/4 v2, 0x0

    aput-object v7, v19, v2

    .line 253
    :cond_4
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 254
    if-eqz v17, :cond_5

    .line 255
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/AdnRecord;->setAasIndex(I)V

    .line 257
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v10, 0x9

    if-lt v2, v10, :cond_6

    .line 258
    const-string/jumbo v2, "sne"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 259
    .local v24, sne:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->setSne(Ljava/lang/String;)V

    .line 261
    .end local v24           #sne:Ljava/lang/String;
    :cond_6
    new-instance v2, Lcom/android/internal/telephony/AdnRecord;

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    invoke-direct {v2, v10, v11, v12}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v2, v1, v9}, Lcom/android/internal/telephony/IccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;I)I

    move-result v22

    .line 270
    .end local v6           #strAnr:Ljava/lang/String;
    .end local v7           #strEmail:Ljava/lang/String;
    .end local v8           #strGas:Ljava/lang/String;
    .end local v17           #aasIndex:Ljava/lang/Integer;
    .end local v19           #emails:[Ljava/lang/String;
    .end local v21           #record:Lcom/android/internal/telephony/AdnRecord;
    :goto_1
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .local v18, buf:Ljava/lang/StringBuilder;
    if-gtz v22, :cond_9

    .line 273
    const-string v2, "error/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 317
    .local v23, resultUri:Landroid/net/Uri;
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 325
    return-object v23

    .line 219
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v18           #buf:Ljava/lang/StringBuilder;
    .end local v22           #result:I
    .end local v23           #resultUri:Landroid/net/Uri;
    :sswitch_0
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 220
    goto/16 :goto_0

    .line 224
    :sswitch_1
    const/16 v3, 0x6f3a

    .line 225
    goto/16 :goto_0

    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #strAnr:Ljava/lang/String;
    .restart local v7       #strEmail:Ljava/lang/String;
    .restart local v8       #strGas:Ljava/lang/String;
    .restart local v22       #result:I
    :cond_7
    move-object/from16 v2, p0

    .line 264
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/IccProvider;->addUsimRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v22

    goto :goto_1

    .line 268
    .end local v6           #strAnr:Ljava/lang/String;
    .end local v7           #strEmail:Ljava/lang/String;
    .end local v8           #strGas:Ljava/lang/String;
    :cond_8
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move-object v12, v4

    move-object v13, v5

    move/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v22

    goto :goto_1

    .line 277
    .restart local v18       #buf:Ljava/lang/StringBuilder;
    :cond_9
    sparse-switch v20, :sswitch_data_1

    .line 307
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot insert into URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    :sswitch_2
    const-string v2, "adn/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 282
    :sswitch_3
    const-string v2, "adn1/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 285
    :sswitch_4
    const-string v2, "adn2/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 289
    :sswitch_5
    const-string v2, "fdn/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 292
    :sswitch_6
    const-string v2, "fdn1/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 295
    :sswitch_7
    const-string v2, "fdn2/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 298
    :sswitch_8
    const-string/jumbo v2, "pbr/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 301
    :sswitch_9
    const-string/jumbo v2, "pbr1/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 304
    :sswitch_a
    const-string/jumbo v2, "pbr2/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 215
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x66 -> :sswitch_0
        0x68 -> :sswitch_1
        0xca -> :sswitch_0
        0xcc -> :sswitch_1
    .end sparse-switch

    .line 277
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_5
        0x4 -> :sswitch_8
        0x65 -> :sswitch_3
        0x66 -> :sswitch_6
        0x68 -> :sswitch_9
        0xc9 -> :sswitch_4
        0xca -> :sswitch_7
        0xcc -> :sswitch_a
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 168
    sget-boolean v4, Lcom/android/internal/telephony/IccProvider;->DBG:Z

    if-eqz v4, :cond_0

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "query "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 173
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 174
    .local v1, match:I
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->getRequestType(I)I

    move-result v0

    .line 175
    .local v0, efType:I
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->getRequestSim(I)I

    move-result v3

    .line 176
    .local v3, simId:I
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v2

    .line 177
    .local v2, results:Landroid/database/Cursor;
    return-object v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 28
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 441
    const/16 v19, 0x0

    .line 444
    .local v19, pin2:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "update "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 446
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v24

    .line 447
    .local v24, match:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->getRequestType(I)I

    move-result v3

    .line 448
    .local v3, efType:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->getRequestSim(I)I

    move-result v9

    .line 449
    .local v9, simId:I
    sparse-switch v24, :sswitch_data_0

    .line 464
    :goto_0
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 465
    .local v12, tag:Ljava/lang/String;
    const-string/jumbo v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 467
    .local v13, number:Ljava/lang/String;
    const-string/jumbo v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, newTag:Ljava/lang/String;
    const-string/jumbo v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 469
    .local v6, newNumber:Ljava/lang/String;
    const-string v2, "index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    .line 470
    .local v23, idInt:Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 471
    .local v4, index:I
    if-eqz v23, :cond_0

    .line 472
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 474
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "update: index="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 475
    const/16 v26, 0x0

    .line 476
    .local v26, result:I
    const/4 v2, 0x4

    move/from16 v0, v24

    if-eq v2, v0, :cond_1

    const/16 v2, 0x68

    move/from16 v0, v24

    if-eq v2, v0, :cond_1

    const/16 v2, 0xcc

    move/from16 v0, v24

    if-ne v2, v0, :cond_a

    .line 477
    :cond_1
    const-string/jumbo v2, "newAnr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 478
    .local v7, strAnr:Ljava/lang/String;
    const-string/jumbo v2, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 480
    .local v8, strEmail:Ljava/lang/String;
    const-string v2, "aas"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 481
    .local v21, aasIndex:Ljava/lang/Integer;
    const-string/jumbo v2, "sne"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 482
    .local v27, sne:Ljava/lang/String;
    if-nez v6, :cond_2

    .line 483
    const-string v6, ""

    .line 485
    :cond_2
    if-nez v5, :cond_3

    .line 486
    const-string v5, ""

    .line 488
    :cond_3
    new-instance v25, Lcom/android/internal/telephony/AdnRecord;

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v3, v2, v5, v6}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 489
    .local v25, record:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 490
    const/16 v22, 0x0

    .line 491
    .local v22, emails:[Ljava/lang/String;
    if-eqz v8, :cond_4

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 492
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 493
    const/4 v2, 0x0

    aput-object v8, v22, v2

    .line 495
    :cond_4
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 496
    if-eqz v21, :cond_5

    .line 497
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/AdnRecord;->setAasIndex(I)V

    .line 499
    :cond_5
    if-eqz v27, :cond_6

    .line 500
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->setSne(Ljava/lang/String;)V

    .line 502
    :cond_6
    if-lez v4, :cond_8

    .line 503
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v10, 0x8

    if-lt v2, v10, :cond_7

    .line 504
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1, v4, v9}, Lcom/android/internal/telephony/IccProvider;->updateUsimPBRecordsByIndexWithError(ILcom/android/internal/telephony/AdnRecord;II)I

    move-result v26

    .line 526
    .end local v7           #strAnr:Ljava/lang/String;
    .end local v8           #strEmail:Ljava/lang/String;
    .end local v21           #aasIndex:Ljava/lang/Integer;
    .end local v22           #emails:[Ljava/lang/String;
    .end local v25           #record:Lcom/android/internal/telephony/AdnRecord;
    .end local v27           #sne:Ljava/lang/String;
    :goto_1
    return v26

    .line 453
    .end local v4           #index:I
    .end local v5           #newTag:Ljava/lang/String;
    .end local v6           #newNumber:Ljava/lang/String;
    .end local v12           #tag:Ljava/lang/String;
    .end local v13           #number:Ljava/lang/String;
    .end local v23           #idInt:Ljava/lang/Integer;
    .end local v26           #result:I
    :sswitch_0
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 454
    goto/16 :goto_0

    .line 458
    :sswitch_1
    const/16 v3, 0x6f3a

    .line 459
    goto/16 :goto_0

    .restart local v4       #index:I
    .restart local v5       #newTag:Ljava/lang/String;
    .restart local v6       #newNumber:Ljava/lang/String;
    .restart local v7       #strAnr:Ljava/lang/String;
    .restart local v8       #strEmail:Ljava/lang/String;
    .restart local v12       #tag:Ljava/lang/String;
    .restart local v13       #number:Ljava/lang/String;
    .restart local v21       #aasIndex:Ljava/lang/Integer;
    .restart local v22       #emails:[Ljava/lang/String;
    .restart local v23       #idInt:Ljava/lang/Integer;
    .restart local v25       #record:Lcom/android/internal/telephony/AdnRecord;
    .restart local v26       #result:I
    .restart local v27       #sne:Ljava/lang/String;
    :cond_7
    move-object/from16 v2, p0

    .line 506
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/IccProvider;->updateUsimRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    goto :goto_1

    .line 510
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v10, 0x8

    if-lt v2, v10, :cond_9

    .line 511
    new-instance v2, Lcom/android/internal/telephony/AdnRecord;

    const-string v10, ""

    invoke-direct {v2, v12, v13, v10}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v2, v1, v9}, Lcom/android/internal/telephony/IccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;I)I

    move-result v26

    goto :goto_1

    :cond_9
    move-object/from16 v10, p0

    move v11, v3

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move/from16 v18, v9

    .line 514
    invoke-direct/range {v10 .. v18}, Lcom/android/internal/telephony/IccProvider;->updateUsimRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    goto :goto_1

    .line 520
    .end local v7           #strAnr:Ljava/lang/String;
    .end local v8           #strEmail:Ljava/lang/String;
    .end local v21           #aasIndex:Ljava/lang/Integer;
    .end local v22           #emails:[Ljava/lang/String;
    .end local v25           #record:Lcom/android/internal/telephony/AdnRecord;
    .end local v27           #sne:Ljava/lang/String;
    :cond_a
    if-lez v4, :cond_b

    move-object/from16 v14, p0

    move v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v20, v9

    .line 521
    invoke-direct/range {v14 .. v20}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    goto :goto_1

    :cond_b
    move-object/from16 v10, p0

    move v11, v3

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v19

    move/from16 v17, v9

    .line 523
    invoke-direct/range {v10 .. v17}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    goto :goto_1

    .line 449
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x66 -> :sswitch_0
        0x68 -> :sswitch_1
        0xca -> :sswitch_0
        0xcc -> :sswitch_1
    .end sparse-switch
.end method
