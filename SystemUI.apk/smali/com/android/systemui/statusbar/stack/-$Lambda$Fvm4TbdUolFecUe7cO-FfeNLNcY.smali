.class final synthetic Lcom/android/systemui/statusbar/stack/-$Lambda$Fvm4TbdUolFecUe7cO-FfeNLNcY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/-$Lambda$Fvm4TbdUolFecUe7cO-FfeNLNcY;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->lambda$-com_android_systemui_statusbar_stack_NotificationChildrenContainer_42499()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/-$Lambda$Fvm4TbdUolFecUe7cO-FfeNLNcY;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/-$Lambda$Fvm4TbdUolFecUe7cO-FfeNLNcY;->$m$0()V

    return-void
.end method
