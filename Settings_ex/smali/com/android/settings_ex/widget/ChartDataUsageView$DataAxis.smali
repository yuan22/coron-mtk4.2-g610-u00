.class public Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ChartAxis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataAxis"
.end annotation


# static fields
.field private static final LOG_SCALE:Z = true

.field private static final sSpanSize:Ljava/lang/Object;

.field private static final sSpanUnit:Ljava/lang/Object;


# instance fields
.field private mMax:J

.field private mMin:J

.field private mSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 609
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    .line 610
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 12
    .parameter "res"
    .parameter "builder"
    .parameter "value"

    .prologue
    .line 617
    const-wide/32 v8, 0x3e800000

    cmp-long v8, p3, v8

    if-gez v8, :cond_0

    .line 618
    const v8, 0x104006e

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 619
    .local v5, unit:Ljava/lang/CharSequence;
    const-wide/32 v6, 0x100000

    .line 625
    .local v6, unitFactor:J
    :goto_0
    long-to-double v8, p3

    long-to-double v10, v6

    div-double v0, v8, v10

    .line 629
    .local v0, result:D
    const-wide/high16 v8, 0x4024

    cmpg-double v8, v0, v8

    if-gez v8, :cond_1

    .line 630
    const-string v8, "%.1f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 631
    .local v4, size:Ljava/lang/CharSequence;
    const-wide/high16 v8, 0x4024

    mul-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    mul-long/2addr v8, v6

    const-wide/16 v10, 0xa

    div-long/2addr v8, v10

    long-to-double v2, v8

    .line 637
    .local v2, resultRounded:D
    :goto_1
    sget-object v8, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    const-string v9, "^1"

    #calls: Lcom/android/settings_ex/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    invoke-static {p2, v8, v4, v9}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 638
    sget-object v8, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    const-string v9, "^2"

    #calls: Lcom/android/settings_ex/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    invoke-static {p2, v8, v5, v9}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 640
    double-to-long v8, v2

    return-wide v8

    .line 621
    .end local v0           #result:D
    .end local v2           #resultRounded:D
    .end local v4           #size:Ljava/lang/CharSequence;
    .end local v5           #unit:Ljava/lang/CharSequence;
    .end local v6           #unitFactor:J
    :cond_0
    const v8, 0x104006f

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 622
    .restart local v5       #unit:Ljava/lang/CharSequence;
    const-wide/32 v6, 0x40000000

    .restart local v6       #unitFactor:J
    goto :goto_0

    .line 633
    .restart local v0       #result:D
    :cond_1
    const-string v8, "%.0f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 634
    .restart local v4       #size:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    mul-long/2addr v8, v6

    long-to-double v2, v8

    .restart local v2       #resultRounded:D
    goto :goto_1
.end method

.method public convertToPoint(J)F
    .locals 10
    .parameter "value"

    .prologue
    .line 588
    long-to-double v4, p1

    iget-wide v6, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    long-to-double v6, v6

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v8, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    div-double v2, v4, v6

    .line 589
    .local v2, normalized:D
    const-wide/high16 v4, 0x4024

    const-wide v6, 0x3fd79b217a704c38L

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, -0x4059d6f1420f71c4L

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 591
    .local v0, fraction:D
    iget v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v4, v4

    mul-double/2addr v4, v0

    double-to-float v4, v4

    return v4
.end method

.method public convertToValue(F)J
    .locals 10
    .parameter "point"

    .prologue
    .line 600
    iget v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    div-float v4, p1, v4

    float-to-double v2, v4

    .line 601
    .local v2, normalized:D
    const-wide v4, 0x3ff4f6ac3b8f3c62L

    const-wide v6, 0x4005b07dd022ee16L

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v0, v4, v6

    .line 603
    .local v0, fraction:D
    iget-wide v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v8, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    double-to-long v4, v4

    return-wide v4
.end method

.method public getTickPoints()[F
    .locals 13

    .prologue
    .line 645
    iget-wide v9, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v11, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long v1, v9, v11

    .line 648
    .local v1, range:J
    const-wide/16 v9, 0x10

    div-long v9, v1, v9

    #calls: Lcom/android/settings_ex/widget/ChartDataUsageView;->roundUpToPowerOfTwo(J)J
    invoke-static {v9, v10}, Lcom/android/settings_ex/widget/ChartDataUsageView;->access$900(J)J

    move-result-wide v4

    .line 649
    .local v4, tickJump:J
    div-long v9, v1, v4

    long-to-int v3, v9

    .line 650
    .local v3, tickCount:I
    new-array v6, v3, [F

    .line 651
    .local v6, tickPoints:[F
    iget-wide v7, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    .line 652
    .local v7, value:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v9, v6

    if-ge v0, v9, :cond_0

    .line 653
    invoke-virtual {p0, v7, v8}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v9

    aput v9, v6, v0

    .line 654
    add-long/2addr v7, v4

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    :cond_0
    return-object v6
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 560
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMax:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBounds(JJ)Z
    .locals 2
    .parameter "min"
    .parameter "max"

    .prologue
    .line 565
    iget-wide v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 566
    :cond_0
    iput-wide p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMin:J

    .line 567
    iput-wide p3, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mMax:J

    .line 568
    const/4 v0, 0x1

    .line 570
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(F)Z
    .locals 1
    .parameter "size"

    .prologue
    .line 576
    iget v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 577
    iput p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    .line 578
    const/4 v0, 0x1

    .line 580
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAdjustAxis(J)I
    .locals 7
    .parameter "value"

    .prologue
    .line 662
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v0

    .line 663
    .local v0, point:F
    float-to-double v1, v0

    iget v3, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v3, v3

    const-wide v5, 0x3fb999999999999aL

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 664
    const/4 v1, -0x1

    .line 668
    :goto_0
    return v1

    .line 665
    :cond_0
    float-to-double v1, v0

    iget v3, p0, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v3, v3

    const-wide v5, 0x3feb333333333333L

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 666
    const/4 v1, 0x1

    goto :goto_0

    .line 668
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
