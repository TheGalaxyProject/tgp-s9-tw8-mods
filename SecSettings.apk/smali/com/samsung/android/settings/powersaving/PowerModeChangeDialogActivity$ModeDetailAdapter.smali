.class Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PowerModeChangeDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;)Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->mActivity:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    return-object v0
.end method

.method public constructor <init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;IILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {p2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object p2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->mActivity:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v10, 0x7f0d01e3

    invoke-virtual {v7, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    const v10, 0x7f0a08bb

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v10, 0x7f0a0835

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v10, 0x7f0a080f

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const v10, 0x7f0a0878

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    if-eqz v0, :cond_79

    iget-object v10, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mTitle:Ljava/lang/String;

    if-eqz v10, :cond_68

    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v10

    if-eqz v10, :cond_63

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u200f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mTitle:Ljava/lang/String;

    :cond_63
    iget-object v10, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_68
    iget-object v10, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mSummary:Ljava/lang/String;

    if-eqz v10, :cond_7a

    iget-object v10, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mSummary:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_74
    iget v10, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mType:I

    packed-switch v10, :pswitch_data_be

    :cond_79
    :goto_79
    return-object v6

    :cond_7a
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_74

    :pswitch_80
    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mEntries:[Ljava/lang/String;

    const v11, 0x7f0d01e4

    invoke-direct {v5, v8, v11, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v8, 0x1090009

    invoke-virtual {v5, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget v8, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mStatus:I

    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {v1, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    new-instance v8, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$1;

    invoke-direct {v8, p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$1;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;)V

    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_79

    :pswitch_a8
    iget v10, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mStatus:I

    if-ne v10, v8, :cond_bb

    :goto_ac
    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {v3, v9}, Landroid/widget/Switch;->setVisibility(I)V

    new-instance v8, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;

    invoke-direct {v8, p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$2;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;)V

    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_79

    :cond_bb
    move v8, v9

    goto :goto_ac

    nop

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_80
    .end packed-switch
.end method
