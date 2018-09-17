.class Lcom/android/server/policy/LegacyGlobalActions$3;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v1, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v2, v7

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap8(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_53

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v8}, Lcom/android/server/policy/LegacyGlobalActions;->-get37(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap16(Lcom/android/server/policy/LegacyGlobalActions;I)I

    move-result v5

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v8}, Lcom/android/server/policy/LegacyGlobalActions;->-get36(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap17(Lcom/android/server/policy/LegacyGlobalActions;I)I

    move-result v6

    :goto_31
    if-nez v0, :cond_c9

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get62()Z

    move-result v7

    if-eqz v7, :cond_77

    if-lt v1, v5, :cond_77

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get37(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v7

    add-int/2addr v7, v5

    if-gt v1, v7, :cond_77

    sub-int v7, v6, v4

    if-lt v2, v7, :cond_77

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get36(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v7

    add-int/2addr v7, v6

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_77

    return v9

    :cond_53
    const v7, 0x102000b

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v8}, Lcom/android/server/policy/LegacyGlobalActions;->-get37(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap17(Lcom/android/server/policy/LegacyGlobalActions;I)I

    move-result v5

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v8, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v8}, Lcom/android/server/policy/LegacyGlobalActions;->-get36(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap16(Lcom/android/server/policy/LegacyGlobalActions;I)I

    move-result v6

    goto :goto_31

    :cond_77
    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get62()Z

    move-result v7

    if-nez v7, :cond_8b

    if-eqz v3, :cond_8b

    if-lt v1, v5, :cond_8b

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get37(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v7

    add-int/2addr v7, v5

    if-gt v1, v7, :cond_8b

    return v9

    :cond_8b
    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get62()Z

    move-result v7

    if-nez v7, :cond_a4

    xor-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_a4

    sub-int v7, v6, v4

    if-lt v2, v7, :cond_a4

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get36(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v7

    add-int/2addr v7, v6

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_a4

    return v9

    :cond_a4
    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get58()Z

    move-result v7

    if-eqz v7, :cond_b3

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get62()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b3

    return v10

    :cond_b3
    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get62()Z

    move-result v7

    if-eqz v7, :cond_bf

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7, v3, v9}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap30(Lcom/android/server/policy/LegacyGlobalActions;ZZ)V

    :goto_be
    return v10

    :cond_bf
    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_be

    :cond_c9
    if-ne v0, v10, :cond_e4

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get58()Z

    move-result v7

    if-eqz v7, :cond_e4

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get62()Z

    move-result v7

    if-eqz v7, :cond_e5

    invoke-static {v9}, Lcom/android/server/policy/LegacyGlobalActions;->-set18(Z)Z

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7, v9}, Lcom/android/server/policy/LegacyGlobalActions;->-set6(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7, v9}, Lcom/android/server/policy/LegacyGlobalActions;->-set4(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    :cond_e4
    :goto_e4
    return v9

    :cond_e5
    invoke-static {v9}, Lcom/android/server/policy/LegacyGlobalActions;->-set16(Z)Z

    iget-object v7, p0, Lcom/android/server/policy/LegacyGlobalActions$3;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_e4
.end method
