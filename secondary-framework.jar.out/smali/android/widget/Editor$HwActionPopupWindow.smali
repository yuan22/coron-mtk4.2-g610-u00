.class Landroid/widget/Editor$HwActionPopupWindow;
.super Landroid/widget/Editor$ActionPopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HwActionPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$HwActionPopupWindow$SortHelper;
    }
.end annotation


# static fields
.field private static final DIVIDER_PADDING:I = 0x8

.field private static final POPUP_TEXT_LAYOUT_HW:I = 0x3070018


# instance fields
.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mOldTextSize:I

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mSelectTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 1
    .parameter

    .prologue
    .line 4017
    iput-object p1, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 4027
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->mOldTextSize:I

    .line 4375
    return-void
.end method

.method private getStatusBarHeight()I
    .locals 3

    .prologue
    .line 4365
    const/4 v1, 0x0

    .line 4366
    .local v1, statusBarHeight:I
    iget-object v2, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4367
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4368
    .local v0, frame:Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4369
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 4371
    .end local v0           #frame:Landroid/graphics/Rect;
    :cond_0
    return v1
.end method


# virtual methods
.method protected initContentView()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 4031
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4032
    .local v1, linearLayout:Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4033
    const v2, 0x10900d3

    .line 4035
    .local v2, textResId:I
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 4038
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4041
    .local v3, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v4}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v4

    iget-boolean v4, v4, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v4, :cond_0

    .line 4042
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 4044
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v5}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v5

    iget v5, v5, Landroid/widget/Editor$EditTextAddtionConfig;->mTextDividerRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4045
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    .line 4046
    const v2, 0x3070018

    .line 4047
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v4}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v4

    iget v4, v4, Landroid/widget/Editor$EditTextAddtionConfig;->mTextBackgroundRes:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4054
    :goto_0
    iput-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 4056
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    .line 4057
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4058
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4059
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    const v5, 0x3020025

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4060
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 4061
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4062
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4064
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    .line 4065
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4066
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4067
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    const v5, 0x104000d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4068
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 4069
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4070
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4072
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 4073
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4074
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4075
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    const v5, 0x1040001

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4076
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 4077
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4078
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4080
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    .line 4081
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4082
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4083
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    const v5, 0x1040003

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4084
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 4085
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4086
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4088
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 4089
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4090
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4091
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v5, 0x104000b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4092
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 4093
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4094
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4096
    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    .line 4097
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4098
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4099
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const v5, 0x10403c1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4100
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 4101
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4102
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4103
    return-void

    .line 4050
    :cond_0
    const v4, 0x10805c2

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method protected measureContent()V
    .locals 28

    .prologue
    .line 4185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 4186
    .local v19, start:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 4187
    .local v6, displayMetrics:Landroid/util/DisplayMetrics;
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    const/high16 v27, -0x8000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 4189
    .local v25, widthMeasureSpec:I
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v26, v0

    const/high16 v27, -0x8000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 4191
    .local v10, heightMeasureSpec:I
    const/16 v24, 0x0

    .line 4192
    .local v24, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 4193
    .local v16, popupBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v16, :cond_1

    .line 4194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v26

    if-nez v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    new-instance v27, Landroid/graphics/Rect;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Rect;-><init>()V

    #setter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v27}, Landroid/widget/Editor;->access$1902(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 4195
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4196
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    add-int v26, v26, v27

    add-int v24, v24, v26

    .line 4198
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingLeft()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getPaddingRight()I

    move-result v27

    add-int v26, v26, v27

    add-int v24, v24, v26

    .line 4199
    const/16 v21, 0x0

    .line 4200
    .local v21, textViewTotalWidth:I
    const/16 v23, 0x0

    .line 4201
    .local v23, visibleChildCount:I
    const/4 v15, 0x1

    .line 4202
    .local v15, needResetTextSize:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mOldTextSize:I

    move/from16 v26, v0

    if-gez v26, :cond_2

    .line 4203
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getTextSize()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$HwActionPopupWindow;->mOldTextSize:I

    .line 4204
    const/4 v15, 0x0

    .line 4206
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v26, v0

    const/high16 v27, 0x4000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 4207
    .local v14, minMeasureSpec:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v11, v0, :cond_6

    .line 4208
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 4209
    .local v22, v:Landroid/widget/TextView;
    if-eqz v15, :cond_3

    .line 4210
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mOldTextSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 4212
    :cond_3
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    const/16 v27, -0x2

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4213
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Landroid/view/View;->measure(II)V

    .line 4214
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v26

    if-nez v26, :cond_4

    .line 4215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 4216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v26, v0

    add-int v21, v21, v26

    .line 4220
    :goto_1
    add-int/lit8 v23, v23, 0x1

    .line 4207
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 4218
    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v21, v21, v26

    goto :goto_1

    .line 4224
    .end local v22           #v:Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    move/from16 v26, v0

    if-eqz v26, :cond_10

    .line 4225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    check-cast v26, Landroid/widget/LinearLayout;

    invoke-virtual/range {v26 .. v26}, Landroid/widget/LinearLayout;->getDividerWidth()I

    move-result v8

    .line 4226
    .local v8, dividerWidth:I
    add-int/lit8 v26, v23, -0x1

    mul-int v7, v26, v8

    .line 4227
    .local v7, dividerTotalWidth:I
    add-int v24, v24, v7

    .line 4228
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Editor$HwActionPopupWindow;->mOldTextSize:I

    .line 4230
    .local v3, currentTextSize:I
    :cond_7
    add-int v26, v21, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxWindowWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinTextSizeInPopup:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-le v3, v0, :cond_a

    .line 4231
    add-int/lit8 v3, v3, -0x1

    .line 4232
    const/16 v21, 0x0

    .line 4233
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v11, v0, :cond_7

    .line 4234
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 4235
    .restart local v22       #v:Landroid/widget/TextView;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v26

    if-nez v26, :cond_8

    .line 4236
    int-to-float v0, v3

    move/from16 v26, v0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 4237
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    const/16 v27, -0x2

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4238
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Landroid/view/View;->measure(II)V

    .line 4239
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 4240
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v26, v0

    add-int v21, v21, v26

    .line 4233
    :cond_8
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 4242
    :cond_9
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v21, v21, v26

    goto :goto_3

    .line 4247
    .end local v22           #v:Landroid/widget/TextView;
    :cond_a
    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ge v11, v0, :cond_c

    .line 4248
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 4249
    .restart local v22       #v:Landroid/widget/TextView;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v26

    if-nez v26, :cond_b

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    .line 4250
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4251
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->reLayoutAfterMeasure()V

    .line 4252
    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v10}, Landroid/view/View;->measure(II)V

    .line 4247
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 4256
    .end local v22           #v:Landroid/widget/TextView;
    :cond_c
    add-int v26, v21, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxWindowWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_10

    .line 4258
    add-int v26, v21, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxWindowWidthInPopup:I

    move/from16 v27, v0

    sub-int v5, v26, v27

    .line 4259
    .local v5, decreaseNeed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 4260
    .local v12, lastView:Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v27, v0

    sub-int v4, v26, v27

    .line 4261
    .local v4, decrease:I
    if-lt v4, v5, :cond_e

    .line 4262
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sub-int v9, v26, v5

    .line 4263
    .local v9, finalWidth:I
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4264
    invoke-virtual {v12}, Landroid/widget/TextView;->reLayoutAfterMeasure()V

    .line 4265
    const/high16 v26, 0x4000

    move/from16 v0, v26

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v12, v0, v10}, Landroid/view/View;->measure(II)V

    .line 4266
    sub-int v21, v21, v5

    .line 4267
    const/4 v5, 0x0

    .line 4277
    .end local v9           #finalWidth:I
    :goto_5
    if-lez v5, :cond_10

    .line 4278
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 4279
    .local v18, sortHelperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Editor$HwActionPopupWindow$SortHelper;>;"
    const/4 v11, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ge v11, v0, :cond_f

    .line 4280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 4281
    .local v22, v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxViewWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_d

    .line 4282
    new-instance v26, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-direct {v0, v1, v11, v2}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;-><init>(Landroid/widget/Editor$HwActionPopupWindow;II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4279
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 4269
    .end local v18           #sortHelperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Editor$HwActionPopupWindow$SortHelper;>;"
    .end local v22           #v:Landroid/view/View;
    :cond_e
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4270
    invoke-virtual {v12}, Landroid/widget/TextView;->reLayoutAfterMeasure()V

    .line 4271
    invoke-virtual {v12, v14, v10}, Landroid/view/View;->measure(II)V

    .line 4272
    sub-int v21, v21, v4

    .line 4273
    sub-int/2addr v5, v4

    goto :goto_5

    .line 4285
    .restart local v18       #sortHelperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Editor$HwActionPopupWindow$SortHelper;>;"
    :cond_f
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Landroid/widget/Editor$HwActionPopupWindow$SortHelper;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/widget/Editor$HwActionPopupWindow$SortHelper;

    .line 4286
    .local v17, sortHelper:[Landroid/widget/Editor$HwActionPopupWindow$SortHelper;
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 4287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxViewWidthInPopup:I

    move/from16 v26, v0

    const/high16 v27, 0x4000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 4288
    .local v13, maxMeasureSpec:I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v11, v26, -0x1

    :goto_7
    if-ltz v11, :cond_10

    .line 4289
    aget-object v26, v17, v11

    #getter for: Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->width:I
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->access$3600(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxViewWidthInPopup:I

    move/from16 v27, v0

    sub-int v4, v26, v27

    .line 4290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    aget-object v27, v17, v11

    #getter for: Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->index:I
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->access$3700(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 4291
    .local v22, v:Landroid/widget/TextView;
    if-lt v4, v5, :cond_12

    .line 4292
    aget-object v26, v17, v11

    #getter for: Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->width:I
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->access$3600(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I

    move-result v26

    sub-int v9, v26, v5

    .line 4293
    .restart local v9       #finalWidth:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4294
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->reLayoutAfterMeasure()V

    .line 4295
    const/high16 v26, 0x4000

    move/from16 v0, v26

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Landroid/view/View;->measure(II)V

    .line 4296
    sub-int v21, v21, v5

    .line 4297
    const/4 v5, 0x0

    .line 4310
    .end local v3           #currentTextSize:I
    .end local v4           #decrease:I
    .end local v5           #decreaseNeed:I
    .end local v7           #dividerTotalWidth:I
    .end local v8           #dividerWidth:I
    .end local v9           #finalWidth:I
    .end local v12           #lastView:Landroid/widget/TextView;
    .end local v13           #maxMeasureSpec:I
    .end local v17           #sortHelper:[Landroid/widget/Editor$HwActionPopupWindow$SortHelper;
    .end local v18           #sortHelperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Editor$HwActionPopupWindow$SortHelper;>;"
    .end local v22           #v:Landroid/widget/TextView;
    :cond_10
    add-int v24, v24, v21

    .line 4311
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    move/from16 v26, v0

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxWindowWidthInPopup:I

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v26

    if-le v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxWindowWidthInPopup:I

    move/from16 v24, v0

    .line 4312
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    const/high16 v27, 0x4000

    move/from16 v0, v24

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/view/View;->measure(II)V

    .line 4313
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4314
    return-void

    .line 4300
    .restart local v3       #currentTextSize:I
    .restart local v4       #decrease:I
    .restart local v5       #decreaseNeed:I
    .restart local v7       #dividerTotalWidth:I
    .restart local v8       #dividerWidth:I
    .restart local v12       #lastView:Landroid/widget/TextView;
    .restart local v13       #maxMeasureSpec:I
    .restart local v17       #sortHelper:[Landroid/widget/Editor$HwActionPopupWindow$SortHelper;
    .restart local v18       #sortHelperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Editor$HwActionPopupWindow$SortHelper;>;"
    .restart local v22       #v:Landroid/widget/TextView;
    :cond_12
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxViewWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4301
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->reLayoutAfterMeasure()V

    .line 4302
    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v10}, Landroid/view/View;->measure(II)V

    .line 4303
    sub-int v21, v21, v4

    .line 4304
    sub-int/2addr v5, v4

    .line 4288
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_7
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 4163
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 4164
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->selectCurrentWord()Z
    invoke-static {v0}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;)Z

    .line 4165
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 4181
    :goto_0
    return-void

    .line 4167
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 4168
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    .line 4169
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_0

    .line 4171
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 4172
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4173
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    goto :goto_0

    .line 4175
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 4176
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 4177
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    goto :goto_0

    .line 4180
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/Editor$ActionPopupWindow;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public show()V
    .locals 14

    .prologue
    .line 4107
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->canPaste()Z

    move-result v2

    .line 4108
    .local v2, canPaste:Z
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static {v12}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v5, 0x1

    .line 4110
    .local v5, canSuggest:Z
    :goto_0
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v12}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v12

    iget-boolean v12, v12, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v12, :cond_2

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->canSelectText()Z
    invoke-static {v12}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->canSelectCurrentWord()Z
    invoke-static {v12}, Landroid/widget/Editor;->access$3200(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mIsInSelectionActionMode:Z
    invoke-static {v12}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->hasPasswordTransformationMethod()Z
    invoke-static {v12}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v3, 0x1

    .line 4112
    .local v3, canSelect:Z
    :goto_1
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v12}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v12

    iget-boolean v12, v12, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v12, :cond_3

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->canSelectText()Z
    invoke-static {v12}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v4, 0x1

    .line 4113
    .local v4, canSelectAll:Z
    :goto_2
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v12}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v12

    iget-boolean v12, v12, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v12, :cond_4

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->canCut()Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v1, 0x1

    .line 4114
    .local v1, canCut:Z
    :goto_3
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v12}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v12

    iget-boolean v12, v12, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v12, :cond_5

    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->canCopy()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v0, 0x1

    .line 4115
    .local v0, canCopy:Z
    :goto_4
    iget-object v13, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 4116
    iget-object v13, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 4117
    iget-object v13, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    const/4 v12, 0x0

    :goto_7
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 4118
    iget-object v13, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 4119
    iget-object v13, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    const/4 v12, 0x0

    :goto_9
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 4120
    iget-object v13, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    const/4 v12, 0x0

    :goto_a
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 4123
    const/4 v11, 0x0

    .line 4125
    .local v11, viewCount:I
    const/4 v8, 0x0

    .line 4127
    .local v8, lastViewNum:I
    const/4 v9, 0x1

    .line 4129
    .local v9, leftFlag:Z
    const/4 v7, 0x0

    .local v7, k:I
    :goto_b
    iget-object v12, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v7, v12, :cond_c

    .line 4130
    iget-object v12, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v12, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 4131
    .local v10, v:Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_0

    .line 4132
    add-int/lit8 v11, v11, 0x1

    .line 4133
    move v8, v7

    .line 4129
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 4108
    .end local v0           #canCopy:Z
    .end local v1           #canCut:Z
    .end local v3           #canSelect:Z
    .end local v4           #canSelectAll:Z
    .end local v5           #canSuggest:Z
    .end local v7           #k:I
    .end local v8           #lastViewNum:I
    .end local v9           #leftFlag:Z
    .end local v10           #v:Landroid/widget/TextView;
    .end local v11           #viewCount:I
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 4110
    .restart local v5       #canSuggest:Z
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 4112
    .restart local v3       #canSelect:Z
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 4113
    .restart local v4       #canSelectAll:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 4114
    .restart local v1       #canCut:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 4115
    .restart local v0       #canCopy:Z
    :cond_6
    const/16 v12, 0x8

    goto :goto_5

    .line 4116
    :cond_7
    const/16 v12, 0x8

    goto :goto_6

    .line 4117
    :cond_8
    const/16 v12, 0x8

    goto :goto_7

    .line 4118
    :cond_9
    const/16 v12, 0x8

    goto :goto_8

    .line 4119
    :cond_a
    const/16 v12, 0x8

    goto :goto_9

    .line 4120
    :cond_b
    const/16 v12, 0x8

    goto :goto_a

    .line 4137
    .restart local v7       #k:I
    .restart local v8       #lastViewNum:I
    .restart local v9       #leftFlag:Z
    .restart local v11       #viewCount:I
    :cond_c
    const/4 v6, 0x0

    .local v6, i:I
    :goto_c
    iget-object v12, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v6, v12, :cond_d

    .line 4138
    iget-object v12, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v12, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 4139
    .restart local v10       #v:Landroid/widget/TextView;
    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    .line 4140
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_f

    .line 4141
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v12}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v12

    iget v12, v12, Landroid/widget/Editor$EditTextAddtionConfig;->mTextBackgroundSingleRes:I

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4156
    .end local v10           #v:Landroid/widget/TextView;
    :cond_d
    if-nez v2, :cond_12

    if-nez v5, :cond_12

    if-nez v3, :cond_12

    if-nez v4, :cond_12

    if-nez v1, :cond_12

    if-nez v0, :cond_12

    .line 4159
    :goto_d
    return-void

    .line 4144
    .restart local v10       #v:Landroid/widget/TextView;
    :cond_e
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_f

    .line 4145
    if-eqz v9, :cond_10

    .line 4146
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v12}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v12

    iget v12, v12, Landroid/widget/Editor$EditTextAddtionConfig;->mTextBackgroundLeftRes:I

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4147
    const/4 v9, 0x0

    .line 4137
    :cond_f
    :goto_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 4148
    :cond_10
    if-ne v6, v8, :cond_11

    .line 4149
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v12}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v12

    iget v12, v12, Landroid/widget/Editor$EditTextAddtionConfig;->mTextBackgroundRightRes:I

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_e

    .line 4151
    :cond_11
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v12}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v12

    iget v12, v12, Landroid/widget/Editor$EditTextAddtionConfig;->mTextBackgroundMediumRes:I

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_e

    .line 4157
    .end local v10           #v:Landroid/widget/TextView;
    :cond_12
    iget-object v12, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->postInvalidate()V

    .line 4158
    invoke-super {p0}, Landroid/widget/Editor$ActionPopupWindow;->directlyShow()V

    goto :goto_d
.end method

.method protected updatePosition(II)V
    .locals 9
    .parameter "parentPositionX"
    .parameter "parentPositionY"

    .prologue
    const/4 v7, 0x0

    .line 4318
    iget v6, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    add-int v2, p1, v6

    .line 4319
    .local v2, positionX:I
    iget v6, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    add-int v3, p2, v6

    .line 4326
    .local v3, positionY:I
    iget-object v6, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v6, v6, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v6, v6, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v6}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4327
    iget-object v6, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v6, v6, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v6}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 4328
    iget-object v6, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    add-int v3, v6, v8

    .line 4330
    iget-object v6, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v3, v6

    if-gtz v6, :cond_0

    .line 4331
    iget-object v6, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    iget v8, v8, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4332
    .local v1, handle:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v8, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v6, v8

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int v3, v6, v8

    .line 4339
    .end local v1           #handle:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-ltz v3, :cond_1

    .line 4340
    invoke-direct {p0}, Landroid/widget/Editor$HwActionPopupWindow;->getStatusBarHeight()I

    move-result v4

    .line 4341
    .local v4, statusBarHeight:I
    sub-int v6, v3, v4

    invoke-virtual {p0, v6}, Landroid/widget/Editor$ActionPopupWindow;->clipVertically(I)I

    move-result v6

    add-int v3, v6, v4

    .line 4347
    .end local v4           #statusBarHeight:I
    :goto_0
    iget-object v6, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4348
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v6, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 4349
    .local v5, width:I
    iget-object v6, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v6}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v6

    iget-boolean v6, v6, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v6, :cond_2

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v6, v5

    iget-object v8, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v8}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v8

    iget v8, v8, Landroid/widget/Editor$EditTextAddtionConfig;->mCustomPopupPadding:I

    sub-int/2addr v6, v8

    :goto_1
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4350
    iget-object v6, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v6}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v6

    iget-boolean v6, v6, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v6}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v6

    iget v6, v6, Landroid/widget/Editor$EditTextAddtionConfig;->mCustomPopupPadding:I

    :goto_2
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4352
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4353
    iget-object v6, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v2, v3, v5, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 4358
    :goto_3
    return-void

    .line 4343
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v5           #width:I
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/Editor$ActionPopupWindow;->clipVertically(I)I

    move-result v3

    goto :goto_0

    .line 4349
    .restart local v0       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v5       #width:I
    :cond_2
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v6, v5

    goto :goto_1

    :cond_3
    move v6, v7

    .line 4350
    goto :goto_2

    .line 4355
    :cond_4
    iget-object v6, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v8, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v6, v8, v7, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3
.end method
