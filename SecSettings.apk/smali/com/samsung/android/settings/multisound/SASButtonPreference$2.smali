.class Lcom/samsung/android/settings/multisound/SASButtonPreference$2;
.super Ljava/lang/Object;
.source "SASButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/multisound/SASButtonPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/SASButtonPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference$2;->this$0:Lcom/samsung/android/settings/multisound/SASButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_b

    sparse-switch p2, :sswitch_data_10

    :cond_b
    return v1

    :sswitch_c
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    return v2

    :sswitch_data_10
    .sparse-switch
        0x17 -> :sswitch_c
        0x42 -> :sswitch_c
    .end sparse-switch
.end method
