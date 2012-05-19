.class Lcom/android/internal/policy/impl/PhoneWindowManager$1;
.super Lcom/android/internal/view/BaseInputHandler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Ljava/lang/Runnable;)V
    .registers 5
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 314
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_15

    .line 318
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/PointerLocationView;->addTouchEvent(Landroid/view/MotionEvent;)V

    .line 320
    :cond_15
    monitor-exit v0

    .line 321
    return-void

    .line 320
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v1
.end method
