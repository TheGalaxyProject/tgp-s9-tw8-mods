.class final synthetic Lcom/android/server/autofill/ui/-$Lambda$lWFJV62mVsorLi23UkgJkVRbfB8$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$Lambda$lWFJV62mVsorLi23UkgJkVRbfB8$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/autofill/ui/SaveUi;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$Lambda$lWFJV62mVsorLi23UkgJkVRbfB8$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/service/autofill/SaveInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/autofill/ui/SaveUi;->lambda$-com_android_server_autofill_ui_SaveUi_6151(Landroid/service/autofill/SaveInfo;Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$Lambda$lWFJV62mVsorLi23UkgJkVRbfB8$1;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$Lambda$lWFJV62mVsorLi23UkgJkVRbfB8$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/-$Lambda$lWFJV62mVsorLi23UkgJkVRbfB8$1;->$m$0(Landroid/view/View;)V

    return-void
.end method
