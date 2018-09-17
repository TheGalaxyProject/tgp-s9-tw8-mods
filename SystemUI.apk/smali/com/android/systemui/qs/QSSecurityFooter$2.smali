.class Lcom/android/systemui/qs/QSSecurityFooter$2;
.super Ljava/lang/Object;
.source "QSSecurityFooter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSSecurityFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->-get6(Lcom/android/systemui/qs/QSSecurityFooter;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->-get5(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSSecurityFooter;->-get6(Lcom/android/systemui/qs/QSSecurityFooter;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->-get9(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->-get8(Lcom/android/systemui/qs/QSSecurityFooter;)Z

    move-result v0

    if-eqz v0, :cond_46

    move v0, v1

    :goto_29
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->-get2(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->-get2(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/QSSecurityFooter$2;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSSecurityFooter;->-get8(Lcom/android/systemui/qs/QSSecurityFooter;)Z

    move-result v3

    if-eqz v3, :cond_48

    :goto_42
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_45
    return-void

    :cond_46
    move v0, v2

    goto :goto_29

    :cond_48
    move v2, v1

    goto :goto_42
.end method
