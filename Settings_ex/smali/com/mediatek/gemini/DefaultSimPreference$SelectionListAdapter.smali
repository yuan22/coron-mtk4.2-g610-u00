.class Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DefaultSimPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/DefaultSimPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mSimItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/gemini/DefaultSimPreference;


# direct methods
.method public constructor <init>(Lcom/mediatek/gemini/DefaultSimPreference;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p2, simItemList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/gemini/SimItem;>;"
    iput-object p1, p0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->this$0:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 208
    iput-object p2, p0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    .line 209
    return-void
.end method

.method private setImageSim(Landroid/widget/RelativeLayout;Lcom/mediatek/gemini/SimItem;)V
    .locals 4
    .parameter "imageSim"
    .parameter "simItem"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 320
    iget-boolean v1, p2, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    if-eqz v1, :cond_1

    .line 321
    iget v1, p2, Lcom/mediatek/gemini/SimItem;->mColor:I

    invoke-static {v1}, Lcom/mediatek/gemini/GeminiUtils;->getSimColorResource(I)I

    move-result v0

    .line 322
    .local v0, resColor:I
    if-ltz v0, :cond_0

    .line 323
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 324
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 333
    .end local v0           #resColor:I
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget v1, p2, Lcom/mediatek/gemini/SimItem;->mColor:I

    if-ne v1, v3, :cond_2

    .line 327
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 328
    const v1, 0x20200ec

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setImageStatus(Landroid/widget/ImageView;Lcom/mediatek/gemini/SimItem;)V
    .locals 3
    .parameter "imageStatus"
    .parameter "simItem"

    .prologue
    const/16 v2, 0x8

    .line 305
    iget-boolean v1, p2, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    if-eqz v1, :cond_1

    .line 306
    iget v1, p2, Lcom/mediatek/gemini/SimItem;->mState:I

    invoke-static {v1}, Lcom/mediatek/gemini/GeminiUtils;->getStatusResource(I)I

    move-result v0

    .line 307
    .local v0, res:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 308
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    .end local v0           #res:I
    :goto_0
    return-void

    .line 310
    .restart local v0       #res:I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 314
    .end local v0           #res:I
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNameAndNum(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mediatek/gemini/SimItem;)V
    .locals 3
    .parameter "textName"
    .parameter "textNum"
    .parameter "simItem"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 352
    iget-object v0, p3, Lcom/mediatek/gemini/SimItem;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    :goto_0
    iget-boolean v0, p3, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p3, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :goto_1
    return-void

    .line 355
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v0, p3, Lcom/mediatek/gemini/SimItem;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setTextNumFormat(Landroid/widget/TextView;Lcom/mediatek/gemini/SimItem;)V
    .locals 4
    .parameter "textNumFormat"
    .parameter "simItem"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 266
    iget-boolean v0, p2, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p2, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 268
    iget v0, p2, Lcom/mediatek/gemini/SimItem;->mDispalyNumberFormat:I

    packed-switch v0, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 270
    :pswitch_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 273
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p2, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 275
    iget-object v0, p2, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p2, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 282
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p2, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 284
    iget-object v0, p2, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    iget-object v1, p2, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p2, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 295
    :cond_2
    const-string v0, "DefaultSimPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simItem.mNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 299
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setViewHolderId(Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .parameter "holder"
    .parameter "convertView"

    .prologue
    .line 336
    const v0, 0x7f080125

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mTextName:Landroid/widget/TextView;

    .line 338
    const v0, 0x7f080126

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mTextNum:Landroid/widget/TextView;

    .line 340
    const v0, 0x7f080122

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mImageStatus:Landroid/widget/ImageView;

    .line 342
    const v0, 0x7f080123

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mTextNumFormat:Landroid/widget/TextView;

    .line 344
    const v0, 0x7f080127

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mCkRadioOn:Landroid/widget/RadioButton;

    .line 346
    const v0, 0x7f080121

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mImageSim:Landroid/widget/RelativeLayout;

    .line 348
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 225
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 231
    if-nez p2, :cond_3

    .line 232
    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->this$0:Lcom/mediatek/gemini/DefaultSimPreference;

    #getter for: Lcom/mediatek/gemini/DefaultSimPreference;->mFlater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/mediatek/gemini/DefaultSimPreference;->access$000(Lcom/mediatek/gemini/DefaultSimPreference;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f040076

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 234
    new-instance v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;-><init>(Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;)V

    .line 235
    .local v0, holder:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;
    invoke-direct {p0, v0, p2}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->setViewHolderId(Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;Landroid/view/View;)V

    .line 236
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 240
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gemini/SimItem;

    .line 241
    .local v1, simItem:Lcom/mediatek/gemini/SimItem;
    iget-object v2, v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mTextName:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mTextNum:Landroid/widget/TextView;

    invoke-direct {p0, v2, v5, v1}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->setNameAndNum(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mediatek/gemini/SimItem;)V

    .line 242
    iget-object v2, v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mImageSim:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2, v1}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->setImageSim(Landroid/widget/RelativeLayout;Lcom/mediatek/gemini/SimItem;)V

    .line 243
    iget-object v2, v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mImageStatus:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->setImageStatus(Landroid/widget/ImageView;Lcom/mediatek/gemini/SimItem;)V

    .line 244
    iget-object v2, v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mTextNumFormat:Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->setTextNumFormat(Landroid/widget/TextView;Lcom/mediatek/gemini/SimItem;)V

    .line 245
    iget-object v5, v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mCkRadioOn:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->this$0:Lcom/mediatek/gemini/DefaultSimPreference;

    #getter for: Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I
    invoke-static {v2}, Lcom/mediatek/gemini/DefaultSimPreference;->access$100(Lcom/mediatek/gemini/DefaultSimPreference;)I

    move-result v2

    if-ne v2, p1, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 246
    iget v2, v1, Lcom/mediatek/gemini/SimItem;->mState:I

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->this$0:Lcom/mediatek/gemini/DefaultSimPreference;

    #getter for: Lcom/mediatek/gemini/DefaultSimPreference;->mType:I
    invoke-static {v2}, Lcom/mediatek/gemini/DefaultSimPreference;->access$200(Lcom/mediatek/gemini/DefaultSimPreference;)I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->getCount()I

    move-result v2

    if-ne v2, v7, :cond_0

    iget-wide v5, v1, Lcom/mediatek/gemini/SimItem;->mSimID:J

    cmp-long v2, v5, v8

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->this$0:Lcom/mediatek/gemini/DefaultSimPreference;

    #getter for: Lcom/mediatek/gemini/DefaultSimPreference;->mType:I
    invoke-static {v2}, Lcom/mediatek/gemini/DefaultSimPreference;->access$200(Lcom/mediatek/gemini/DefaultSimPreference;)I

    move-result v2

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->getCount()I

    move-result v2

    if-eq v2, v7, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->getCount()I

    move-result v2

    if-ne v2, v3, :cond_5

    :cond_1
    iget-wide v5, v1, Lcom/mediatek/gemini/SimItem;->mSimID:J

    cmp-long v2, v5, v8

    if-nez v2, :cond_5

    .line 251
    :cond_2
    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 252
    iget-object v2, v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 253
    iget-object v2, v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mTextNum:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 254
    iget-object v2, v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mCkRadioOn:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 262
    :goto_2
    return-object p2

    .line 238
    .end local v0           #holder:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;
    .end local v1           #simItem:Lcom/mediatek/gemini/SimItem;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;
    goto :goto_0

    .restart local v1       #simItem:Lcom/mediatek/gemini/SimItem;
    :cond_4
    move v2, v4

    .line 245
    goto :goto_1

    .line 256
    :cond_5
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 257
    iget-object v2, v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 258
    iget-object v2, v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mTextNum:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 259
    iget-object v2, v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter$ViewHolder;->mCkRadioOn:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method
