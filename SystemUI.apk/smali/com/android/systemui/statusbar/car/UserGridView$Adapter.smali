.class final Lcom/android/systemui/statusbar/car/UserGridView$Adapter;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "UserGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/UserGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/UserGridView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/car/UserGridView;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/4 v6, 0x0

    if-nez p2, :cond_19

    iget-object v4, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/car/UserGridView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f0d002a

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v3

    const v4, 0x7f0a054e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v3, :cond_57

    iget-object v4, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/car/UserGridView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    invoke-virtual {p2, v4}, Landroid/view/View;->setActivated(Z)V

    :goto_3a
    const v4, 0x7f0a054c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_49

    iget-object v4, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v4, :cond_5e

    :cond_49
    iget-object v4, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/car/UserGridView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_56
    return-object p2

    :cond_57
    const-string/jumbo v4, "Unknown"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    :cond_5e
    iget-object v4, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_56
.end method
