.class Lcom/android/internal/policy/impl/GlobalActions$2;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V
    .registers 13
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$2;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .registers 4
    .parameter "on"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$2;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    :goto_9
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 170
    return-void

    .line 169
    :cond_d
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method
