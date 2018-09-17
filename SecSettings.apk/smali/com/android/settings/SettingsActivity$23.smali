.class Lcom/android/settings/SettingsActivity$23;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->initMainScreenSearchView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/SettingsActivity$23;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_38

    :goto_8
    return v2

    :pswitch_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {}, Lcom/android/settings/SettingsActivity;->-get0()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_24

    iget-object v1, p0, Lcom/android/settings/SettingsActivity$23;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsActivity;->-get5(Lcom/android/settings/SettingsActivity;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    return v2

    :cond_24
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$23;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsActivity;->-get2(Lcom/android/settings/SettingsActivity;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/android/settings/SettingsActivity$23;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->openSearchView()V

    :cond_31
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$23;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v1, v2}, Lcom/android/settings/SettingsActivity;->-set1(Lcom/android/settings/SettingsActivity;Z)Z

    goto :goto_8

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
