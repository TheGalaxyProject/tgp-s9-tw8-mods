.class Lcom/android/settings/DropDownPreference$1;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/DropDownPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/DropDownPreference$1;->this$0:Lcom/android/settings/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-ltz p3, :cond_34

    iget-object v1, p0, Lcom/android/settings/DropDownPreference$1;->this$0:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v1}, Lcom/android/settings/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DropDownPreference$1;->this$0:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v1}, Lcom/android/settings/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/android/settings/DropDownPreference$1;->this$0:Lcom/android/settings/DropDownPreference;

    invoke-static {v1, v0}, Lcom/android/settings/DropDownPreference;->-wrap0(Lcom/android/settings/DropDownPreference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/settings/DropDownPreference$1;->this$0:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/DropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/DropDownPreference$1;->this$0:Lcom/android/settings/DropDownPreference;

    iget-object v2, p0, Lcom/android/settings/DropDownPreference$1;->this$0:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Lcom/android/settings/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_34
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
