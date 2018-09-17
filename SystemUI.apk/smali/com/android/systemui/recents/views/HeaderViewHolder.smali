.class public Lcom/android/systemui/recents/views/HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HeaderViewHolder.java"


# instance fields
.field public contentView:Landroid/widget/LinearLayout;

.field public labelView:Landroid/widget/TextView;

.field public lineView:Landroid/view/View;

.field mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a00fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->contentView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->labelView:Landroid/widget/TextView;

    const v0, 0x7f0a02f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->lineView:Landroid/view/View;

    invoke-static {}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->getAttr()Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    return-void
.end method


# virtual methods
.method public onBind(IZI)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget v0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->INDEX_HEADER_RECOMMENDATION_APPS:I

    if-ne p1, v0, :cond_37

    if-nez p3, :cond_31

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->contentView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_f
    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->labelView:Landroid/widget/TextView;

    const v1, 0x7f120929

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_17
    :goto_17
    if-eqz p2, :cond_49

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v1, v1, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextDarkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->lineView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v1, v1, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextDarkColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_f

    :cond_37
    sget v0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->INDEX_HEADER_MULTI_WINDOW_APPS:I

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->labelView:Landroid/widget/TextView;

    const v1, 0x7f120928

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_17

    :cond_49
    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f06017b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->lineView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f06017a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_30
.end method

.method public onUnbind()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->labelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HeaderViewHolder;->contentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
