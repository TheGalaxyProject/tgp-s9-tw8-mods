.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->-com_android_systemui_statusbar_phone_NavigationBarFragment-mthref-5(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$M2GC-aczdMiLkSdwOGpMTs1Dam8$2;->$m$0(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
