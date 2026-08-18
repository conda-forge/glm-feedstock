#include <glm/glm.hpp>

// Make the consumer resolve this specialization from the shared library.
extern template struct glm::vec<3, float, glm::defaultp>;

int main() {
    const glm::vec3 value(1.0f, 2.0f, 3.0f);
    return value.length() == 3 ? 0 : 1;
}
