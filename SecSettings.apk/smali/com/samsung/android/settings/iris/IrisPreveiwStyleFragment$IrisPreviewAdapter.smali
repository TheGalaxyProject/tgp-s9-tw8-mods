.class public Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "IrisPreveiwStyleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IrisPreviewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;
    }
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPreviewArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field resource:I

.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->mPreviewArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string/jumbo v0, "IrisPreviewAdapter"

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->mPreviewArrayList:Ljava/util/ArrayList;

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput p4, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->resource:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->mPreviewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/4 v6, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_84

    new-instance v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;

    invoke-direct {v0, p0, v4}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;-><init>(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->resource:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f0a0448

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;->mPreviewLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0443

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;->mCheckBtnLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0447

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;->mPrevImg:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_35
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->mPreviewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;->mPrevImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    iget v2, v2, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_55

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->mPreviewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    :cond_55
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    iget v2, v2, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->mStyleNum:I

    if-ne p1, v2, :cond_8b

    iget-object v2, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;->mCheckBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_60
    iget-object v2, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;->mPreviewLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;->this$0:Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f120e50

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;->mPreviewLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$1;-><init>(Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_84
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;

    goto :goto_35

    :cond_8b
    iget-object v2, v0, Lcom/samsung/android/settings/iris/IrisPreveiwStyleFragment$IrisPreviewAdapter$Holder;->mCheckBtnLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_60
.end method
