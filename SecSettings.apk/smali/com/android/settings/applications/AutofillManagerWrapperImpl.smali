.class public Lcom/android/settings/applications/AutofillManagerWrapperImpl;
.super Ljava/lang/Object;
.source "AutofillManagerWrapperImpl.java"

# interfaces
.implements Lcom/android/settings/applications/AutofillManagerWrapper;


# instance fields
.field private final mAfm:Landroid/view/autofill/AutofillManager;


# direct methods
.method public constructor <init>(Landroid/view/autofill/AutofillManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/AutofillManagerWrapperImpl;->mAfm:Landroid/view/autofill/AutofillManager;

    return-void
.end method


# virtual methods
.method public hasAutofillFeature()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/AutofillManagerWrapperImpl;->mAfm:Landroid/view/autofill/AutofillManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/AutofillManagerWrapperImpl;->mAfm:Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    return v0
.end method

.method public isAutofillSupported()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/AutofillManagerWrapperImpl;->mAfm:Landroid/view/autofill/AutofillManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/AutofillManagerWrapperImpl;->mAfm:Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillSupported()Z

    move-result v0

    return v0
.end method
