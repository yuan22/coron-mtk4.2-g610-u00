.class Lcom/android/internal/widget/ActionBarView$HwHomeView;
.super Lcom/android/internal/widget/ActionBarView$HomeView;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HwHomeView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1654
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1655
    return-void
.end method


# virtual methods
.method public getStartOffset()I
    .locals 1

    .prologue
    .line 1666
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 1671
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->onFinishInflate()V

    .line 1672
    const/high16 v0, 0x309

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HwHomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    .line 1673
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1731
    sub-int v22, p5, p3

    div-int/lit8 v20, v22, 0x2

    .line 1732
    .local v20, vCenter:I
    sub-int v21, p4, p2

    .line 1733
    .local v21, width:I
    const/16 v17, 0x0

    .line 1734
    .local v17, upOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    .line 1736
    .local v16, upLp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1737
    .local v15, upHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1738
    .local v19, upWidth:I
    div-int/lit8 v22, v15, 0x2

    sub-int v18, v20, v22

    .line 1739
    .local v18, upTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    add-int v24, v18, v15

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1740
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    add-int v22, v22, v19

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v23, v0

    add-int v17, v22, v23

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1743
    .local v7, actionbardividerLP:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    .line 1744
    .local v5, actionbarDividerHeight:I
    div-int/lit8 v22, v5, 0x2

    sub-int v6, v20, v22

    .line 1745
    .local v6, actionbarDividerTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView$HwHomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v8, v0

    .line 1746
    .local v8, dividerWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    sub-int v23, p4, v8

    add-int v24, v6, v5

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p4

    move/from16 v3, v24

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1748
    sub-int v21, v21, v17

    .line 1749
    add-int p2, p2, v17

    .line 1752
    .end local v5           #actionbarDividerHeight:I
    .end local v6           #actionbarDividerTop:I
    .end local v7           #actionbardividerLP:Landroid/widget/FrameLayout$LayoutParams;
    .end local v8           #dividerWidth:I
    .end local v15           #upHeight:I
    .end local v16           #upLp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v18           #upTop:I
    .end local v19           #upWidth:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 1754
    .local v12, iconLp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    .line 1755
    .local v10, iconHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v14

    .line 1756
    .local v14, iconWidth:I
    sub-int v22, p4, p2

    div-int/lit8 v9, v22, 0x2

    .line 1757
    .local v9, hCenter:I
    iget v0, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    div-int/lit8 v23, v14, 0x2

    sub-int v23, v9, v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    add-int v11, v17, v22

    .line 1758
    .local v11, iconLeft:I
    iget v0, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v22, v0

    div-int/lit8 v23, v10, 0x2

    sub-int v23, v20, v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1759
    .local v13, iconTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    add-int v23, v11, v14

    add-int v24, v13, v10

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v11, v13, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1761
    .end local v9           #hCenter:I
    .end local v10           #iconHeight:I
    .end local v11           #iconLeft:I
    .end local v12           #iconLp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v13           #iconTop:I
    .end local v14           #iconWidth:I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1677
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView$HwHomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1679
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1680
    .local v10, upLp:Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpWidth:I

    .line 1682
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v11, 0x0

    .line 1683
    .local v11, width:I
    :goto_0
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v6, v0, v1

    .line 1686
    .local v6, height:I
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView$HwHomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1689
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1690
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, v11

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView$HwHomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1692
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1694
    .local v9, iconLp:Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int/2addr v11, v0

    .line 1696
    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1699
    .end local v9           #iconLp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1700
    .local v12, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1701
    .local v7, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 1702
    .local v13, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1704
    .local v8, heightSize:I
    sparse-switch v12, :sswitch_data_0

    .line 1715
    :goto_1
    sparse-switch v7, :sswitch_data_1

    .line 1726
    :goto_2
    invoke-virtual {p0, v11, v6}, Lcom/android/internal/widget/ActionBarView$HwHomeView;->setMeasuredDimension(II)V

    .line 1727
    return-void

    .line 1682
    .end local v6           #height:I
    .end local v7           #heightMode:I
    .end local v8           #heightSize:I
    .end local v11           #width:I
    .end local v12           #widthMode:I
    .end local v13           #widthSize:I
    :cond_1
    iget v11, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mUpWidth:I

    goto :goto_0

    .line 1706
    .restart local v6       #height:I
    .restart local v7       #heightMode:I
    .restart local v8       #heightSize:I
    .restart local v11       #width:I
    .restart local v12       #widthMode:I
    .restart local v13       #widthSize:I
    :sswitch_0
    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1707
    goto :goto_1

    .line 1709
    :sswitch_1
    move v11, v13

    .line 1710
    goto :goto_1

    .line 1717
    :sswitch_2
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1718
    goto :goto_2

    .line 1720
    :sswitch_3
    move v6, v8

    .line 1721
    goto :goto_2

    .line 1704
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 1715
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public setUp(Z)V
    .locals 4
    .parameter "isUp"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1658
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 1659
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mIconView:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1661
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HwHomeView;->mActionbarDividerView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1663
    return-void

    :cond_0
    move v0, v2

    .line 1659
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1661
    goto :goto_1
.end method
