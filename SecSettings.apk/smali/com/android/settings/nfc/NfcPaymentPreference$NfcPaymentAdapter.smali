.class Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;
.super Landroid/widget/BaseAdapter;
.source "NfcPaymentPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcPaymentPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcPaymentAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

.field final synthetic this$0:Lcom/android/settings/nfc/NfcPaymentPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/nfc/NfcPaymentPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->getItem(I)Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object v0, v2, p1

    if-nez p2, :cond_69

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-static {v2}, Lcom/android/settings/nfc/NfcPaymentPreference;->-get0(Lcom/android/settings/nfc/NfcPaymentPreference;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d01b2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;-><init>(Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;)V

    const v2, 0x7f0a00c9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v2, 0x7f0a012a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_33
    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-boolean v3, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-object v3, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_69
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;

    goto :goto_33
.end method

.method makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .registers 4

    iget-boolean v0, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPaymentPreference;->-get1(Lcom/android/settings/nfc/NfcPaymentPreference;)Lcom/android/settings/nfc/PaymentBackend;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    :cond_f
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcPaymentPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    return-void
.end method

.method public updateApps([Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->notifyDataSetChanged()V

    return-void
.end method
